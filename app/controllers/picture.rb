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

post '/pictures' do 
	pic=Picture.new(params)
end