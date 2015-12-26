get '/todos' do
  @todos = Todo.all
  erb :index
end

post '/todos' do
  Todo.create(description: params[:description])
  redirect '/todos'
end