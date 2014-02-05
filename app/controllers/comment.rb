get '/comment/:id' do
  @post_id = params[:id]
  erb :comment
end

post '/add_comment' do
  Comment.create(content: params[:comment],
                user_id: session[:id],
                post_id: params[:post_id])
  redirect "/comment/#{params[:post_id]}"
end

get '/view_comments_by_user/:username' do # Pass username
  @user_id = User.find_by(username: params[:username]).id
  erb :view_comments_by_user
end
