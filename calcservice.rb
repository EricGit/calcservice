require 'rubygems'
require 'sinatra'
require 'anemone'

get '/calculator' do
  erb :index
end

post '/submit' do
  @common_english_words = params[:words].split(/,/)
end