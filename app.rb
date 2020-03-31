require 'sinatra'
set :session_secret, 'super secret'

get '/' do
  "hello Ed!"
end

get '/secret' do
  "This is a secret page that belongs to Ed!"
end

get '/random-cat' do
  @name = ["Amigo", "Oscar", "Viking"].sample
  erb :index
end

get '/named-cat' do
  p params
  @name = params[:cat_name]
  erb :index
end
