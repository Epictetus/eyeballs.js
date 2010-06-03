require 'rubygems'
require 'sinatra'

get '/' do
  erb :index
end

get '/reviews' do
  '[{"id": "1", "title":"Local, baby"}]'
end

post '/reviews' do
  '{"id": "1"}'
end

get '/reviews/:id' do
  '{"id": "1", "title":"More Magic!"}'
end

put '/reviews/:id' do
  '{"id": "1", "title":"Tennessee"}'
end

delete '/reviews/:id' do
  '{"id": "1", "title":"Tennessee"}'
end