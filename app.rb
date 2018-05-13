require 'sinatra'
require './student'

get '/' do
  'Hello class!!!!'
end

get '/second' do
  'Second web page!!!'
end

get '/index' do
	@students = Student.all  
    erb :'index.html'
end

get '/new' do
	erb :'new.html'
end

post '/students' do
	Student.all << Student.new(params[:name], params[:email])

redirect '/index'
end

