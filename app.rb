require 'sinatra'

get '/hi' do
  array=["hello", " mate"]
  array.each {|x| puts x}
end

get %r{\/(index|home|$)} do
  erb :index
end

get '/about_us' do
end

get '/contact' do
end

get '/FAQ' do
end

get '/blog' do
end

get '/products' do
end

get %r{.*} do
  erb :four0four
end