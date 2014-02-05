def create(params)
  user = User.create(username: params[:username])
  user.password = params[:password]
  user.save!
end
