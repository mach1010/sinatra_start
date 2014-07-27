require 'sinatra'

get '/hi' do
  array=["hello", " mate"]
  array.each {|x| puts x}
end

get %r{\/(index|home|$)} do
  erb :index
end

get '/about_us' do
  erb :about_us
end

get '/contact' do
 redirect to '/about_us'
end

get '/FAQ' do
end

get '/blog' do
end

get '/products' do
end

not_found do
  'That page does not exist. I am disappoint.'
end

# get %r{.*} do
#   erb :four0four
# end