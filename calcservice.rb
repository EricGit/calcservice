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

post '/taxcalcs/new/calculate.xml' do
  content_type 'text/xml'
  "<xml><name>New Luis#{params[:amt]}</name><age>99</age></xml>"
end

get '/taxcalcs' do
  "index"
end

#get '/taxcalcs/:id' do
#  "<xml>something else#{params[:id]}</xml>"
#end

get '/taxcalc/new' do
  "new"
end

post '/taxcalcs' do
end