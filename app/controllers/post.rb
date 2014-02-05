get '/create_post' do
  erb :create_post
end

post '/create_post' do
  post = Post.create(title: params[:title],
              content: params[:content],
              url: params[:url],
              user_id: session[:id])
  redirect '/'
end

get '/view_posts_by_user/:username' do # Pass username
  @user_id = User.find_by(username: params[:username]).id
  erb :view_posts_by_user
end
