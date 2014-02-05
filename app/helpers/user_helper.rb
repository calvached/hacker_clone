def create(params)
  user = User.create(username: params[:username])
  user.password = params[:password]
  user.save!
end

def auth(user, params)
  if user.password == params[:password]
    session[:id] = user.id
    redirect '/'
  else
    "Invalid password"
  end
end
