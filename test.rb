require './calcservice'
require 'test/unit'
require 'rack/test'

ENV['RACK_ENV'] = 'test'

class HelloWorldTest < Test::Unit::TestCase
  include Rack::Test::Methods

  def app
    Sinatra::Application
  end

  def test_root
    get '/'
    assert !(last_response.ok?)
  end

  def test_calc
    get '/taxcalcs/calculate.xml', :amt => '100'
    puts last_response.body
    assert last_response.body.include?('<cpp>3.3')
    assert last_response.body.include?('<ei>2.2')
  end
end