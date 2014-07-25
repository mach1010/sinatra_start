require 'sinatra'

get '/hi' do
  array=["hello", " mate"]
  array.each {|x| puts x}
end

get '/hey' do
  erb :index
end