require 'rubygems'
require 'sinatra'
require 'sinatra/reloader'
require 'sinatra/activerecord'

# set :database, "sqlite3:pizzashop.db"
ActiveRecord::Base.establish_connection(ENV['DATABASE_URL'] || 'postgres://localhost/pshop_db')

class Product < ActiveRecord::Base
end

class Order < ActiveRecord::Base
end

before do
	@products = Product.all
end

get '/' do
	# @products = Product.all
	erb :index			
end

get '/about' do
	erb :about			
end

get '/admin' do
	@orders = Order.order ('created_at Desc')
	erb :admin
end

post '/cart' do
	
	@orders_input = params[:orders_input]
	@items = parse_orders_input @orders_input

	#вывод сообщения если корзина пуста
	if @items.length ==0
		return erb :empty_cart
	end
	
	@items.each do |item|
		#id, cnt
		item[0] = Product.find(item[0])
	end
	#erb "This is orders: #{@orders.inspect}"
	
	erb :cart
end

post '/confirm_order' do
	@ord = Order.create params[:order]
	erb :confirm_order
end


def parse_orders_input orders_input
	s1 = orders_input.split(/,/)

	arr = []

	s1.each do |x|
		s2 = x.split(/=/)
		s3 = s2[0].split(/_/)

		id = s3[1]
		cnt = s2[1]

		arr2=[id, cnt]
		arr.push arr2
	end
	
	return arr
end
