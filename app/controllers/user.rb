require "sinatra"
require "instagram"

get '/users' do 
	@user=session[:access_token]
	@client = Instagram.client(:access_token => session[:access_token])
	@my_user = @client.user
	if User.find_by_instagram_id(@my_user.id) ==nil
		User.create(username: @my_user.username, profile_pic: @my_user.profile_picture, instagram_id: @my_user.id)
	end
	@logged_in_user=User.find_by_instagram_id(@user)
	session[:id]=@my_user.id
	p session[:id]
	@page_1 = @client.user_media_feed(777)
	@page_2_max_id = @page_1.pagination.next_max_id
	@page_2 = @client.user_recent_media(777, :max_id => @page_2_max_id ) unless @page_2_max_id.nil?
	erb :user_profile_page
end