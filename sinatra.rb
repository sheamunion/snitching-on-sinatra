require 'sinatra'

get '/' do
  "Hello World!!!"
end

get '/about' do
  "A little about me."
end

get '/greetings/:name' do
  "Hello there #{params[:name]}!"
end

# get '/cities/:city/greetings/:name' do
#   "Hi #{params[:name]}! Welcome to the #{params[:city]} greeting page!"
#   "<h1> We're really excited to see you!!</h1>"
# end

get '/cities/:city/greetings/:name' do
  @name = params[:name]
  erb :greeting
end

post '/custom_greetings'do
  @greeting = params[:greeting]
  erb :greeting
end



