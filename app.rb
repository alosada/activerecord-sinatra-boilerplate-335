require_relative "config/application"
require "sinatra"
require "sinatra/reloader"
require "sinatra/activerecord"

get "/" do #index
  @restaurants = Restaurant.all
  erb :index
end
get "/restaurants/new" do # new 
	@restaurant = Restaurant.new 
	erb :new 
end

get "/restaurants/:id" do # show details
  @restaurant = Restaurant.find(params[:id])
  erb :show
end


post '/restaurants' do # create
  # params = {name: 'foobar', addrress: 'bazbat av.'}
  Restaurant.create(name: params[:name], addrress: params[:addrress])
  redirect '/'
end