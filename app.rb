require 'sinatra'

get '/hi' do
  array=["hello", " mate"]
  array.each {|x| puts x}
end

get '/' do
  erb :index
end
