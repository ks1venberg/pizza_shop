require 'rubygems'
require 'sinatra'
require 'sinatra/reloader'
require 'sinatra/activerecord'

set :database, "sqlite3:pizzashop.db"

class Product < ActiveRecord::Base
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
	erb :cart
end