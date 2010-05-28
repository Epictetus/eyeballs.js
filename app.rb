require 'sinatra'

get '/' do
  erb :index
end

post '/reviews' do
  '{"id": "1"}'
end

get '/reviews/:id' do
  '{"id": "1", "title":"More Magic!"}'
end