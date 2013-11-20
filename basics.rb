require 'sinatra'

get '/' do
  "Hello, World!"
end

get '/about' do
  "A little about me."
end

get '/about/:name/:city' do
  "Hello #{params[:name]} from #{params[:city]}"
end

get '/more/*/*' do
  "multiple parameters: #{params[:splat][0]}, #{params[:splat][1]}"
end