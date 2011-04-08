require 'rubygems'
require 'sinatra'
require 'json'

get '/taxcalcs/calculate' do
  content_type :json
  amt = params[:amount]
  {:cpp=>"3", :ei=>"2"}.to_json
end

get '/taxcalcs/calculate.xml' do
  content_type 'text/xml'
  amount = Integer(params[:amt])
  cpp = amount * 0.033
  ei  = amount * 0.022
  "<xml><cpp>#{cpp}</cpp><ei>#{ei}</ei></xml>"
end
