require 'rubygems'
require 'sinatra'
require 'sinatra/reloader'
require 'sinatra/activerecord'

set :database, "sqlite3:pizzashop.db"

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

post '/cart' do
	@orders_input = params[:orders]
	@items = parse_orders_input @orders_input
	
	@items.each do |item|
		#id, cnt
		item[0] = Product.find(item[0])
	end
	#erb "This is orders: #{@orders.inspect}"
	
	erb :cart
end

post '/confirm_order' do
	@ord = Order.new params[:orders]
		@ord.save

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
