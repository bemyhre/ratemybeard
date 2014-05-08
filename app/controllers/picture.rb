require "sinatra"
require "instagram"

enable :sessions

get '/pictures/new' do
	if session[:access_token]
		erb :add_picture
	else
		redirect '/'
	end
end

get'/pictures' do 
	redirect '/users'
end

post '/pictures' do 
	p "SSSSSSSSSSSSS"
	p params[:url]
	User.find(session[:myid]).pictures<<Picture.create(url: params[:url])
	redirect '/users'
end