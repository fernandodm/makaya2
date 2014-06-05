RACK_ENV = 'test' unless defined?(RACK_ENV)
require File.expand_path(File.dirname(__FILE__) + "/../config/boot")

RSpec.configure do |conf|
  conf.include Rack::Test::Methods
end


# if you load it manually
config.formatter = TimestampFormatter
# or if you do not want to autoload it by rspec means, but it should be in
# search path
config.formatter = 'TimestampFormatter'

# You can use this method to custom specify a Rack app
# you want rack-test to invoke:
#
#   app Makaya2::App
#   app Makaya2::App.tap { |a| }
#   app(Makaya2::App) do
#     set :foo, :bar
#   end
#
def app(app = nil, &blk)
  @app ||= block_given? ? app.instance_eval(&blk) : app
  @app ||= Padrino.application
end
