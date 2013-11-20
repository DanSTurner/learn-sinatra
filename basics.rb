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

get '/form' do
  erb :form
end

post '/form' do
  "You said #{params[:message]}"
end

get '/secret' do
  erb :secret
end

post '/secret' do
  "Totally securely encrypted: #{params[:secret].reverse}"
end

get '/decrypt/:secret' do
  "Decrypted message: #{params[:secret].reverse}"
end

not_found do
  halt 404, 'not found'
end
