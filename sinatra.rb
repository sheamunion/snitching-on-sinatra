require 'sinatra'

get '/' do
  "Hello world!"
end

get '/about' do
  "A little about me."
end

get '/greetings/:name' do
  "Hey #{params[:name]}!"
end

get '/cities/:city/greetings/:name' do
  @name = params[:name]
  erb :greeting
end

post '/custom_greetings' do
  @greeting = params[:greeting]
  erb :greeting
end