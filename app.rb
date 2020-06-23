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
get '/random-cat' do
 @name = ["Amigo", "Oscar", "Viking"].sample
erb(:index)
end
get '/cat-form' do
  erb :cat_form
end
post '/named-cat' do
p params
@name = params[:name]
erb(:index)
end
