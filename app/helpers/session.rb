def get_user
  User.find(session[:user_id])
end

def redirect_not_signin
  redirect '/users/signin' unless session[:user_id]
end