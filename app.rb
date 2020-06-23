require 'sinatra'
set :session_secret, 'super secret'

get '/' do
  'Hello there!!'
end
get '/secret' do
  'chamber of secrets'
end
get '/time_chamber' do
  'welcome to the hyperbolic time chamber'
end
get '/cat' do
 @name = ["Amigo", "Oscar", "Viking"].sample
erb(:index)
    
end