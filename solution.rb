require 'sinatra'
enable :sessions

get '/' do
  erb :index
end

post '/sessions' do
  session[:user] = params[:user]
  redirect "/"
end

delete '/sessions' do
  session[:user] = nil
  redirect '/'
end

get '/privado' do
  erb :privado
end