# from http://blog.codenursery.com/2011/11/adding-rspec-to-sinatra.html
require File.join(File.dirname(__FILE__), '..', 'app.rb')

require 'sinatra'
require 'rack/test'

# setup test environment
set :environment, :test
set :run, false
set :raise_errors, true
set :logging, false

def app
  Sinatra::Application
end

RSpec.configure do |config|
  config.include Rack::Test::Methods
end

# from a padrino app
#RACK_ENV = 'test' unless defined?(RACK_ENV)
#require File.expand_path(File.dirname(__FILE__) + "/../config/boot")
#
# RSpec.configure do |conf|
#   conf.include Rack::Test::Methods
# end
#
# # You can use this method to custom specify a Rack app
# # you want rack-test to invoke:
# #
# #   app PadrinoStart::App
# #   app PadrinoStart::App.tap { |a| }
# #   app(PadrinoStart::App) do
# #     set :foo, :bar
# #   end
# #
# def app(app = nil, &blk)
#   @app ||= block_given? ? app.instance_eval(&blk) : app
#   @app ||= Padrino.application
# end
