require 'sinatra'
set :session_secret, 'super secret'

get '/' do
  "hello Ed!"
end

get '/secret' do
  "This is a secret page that belongs to Ed!"
end

get '/cat' do
  erb :index,:locals => {:name => ["Amigo", "Oscar", "Viking"].sample}
end



# locals
# List of locals passed to the document. Handy with partials. Example: erb "<%= foo %>", :locals => {:foo => "bar"}
