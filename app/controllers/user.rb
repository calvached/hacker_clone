get '/login' do

  erb :login
end

get '/logout' do
  session.clear
  redirect '/'
end

post '/login' do
  user = User.find_by_username(params[:username])
  auth(user, params)
end

post '/create_user' do
  create(params)
  redirect '/'
end

get '/profile' do
  erb :profile
end
