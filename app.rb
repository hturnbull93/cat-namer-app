require 'sinatra'
set :session_secret, 'super secret'

get '/' do
  "hello Ed!"
end

get '/secret' do
  "This is a secret page that belongs to Ed!"
end

get '/cat' do
  "<style>
    img {
      border: dashed red 2px;
    }
  </style>
  <img src='http://bit.ly/1eze8aE'>
  <img src='https://images.unsplash.com/photo-1519458524098-335b2a5747b2?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=634&q=80'>"
end
