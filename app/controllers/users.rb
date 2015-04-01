get '/users/new' do
  erb :'users/new'
end

get '/users/signin' do
  if session[:user_id]
    user = get_user

    redirect "/users/#{user.id}"
  end

  erb :'users/signin'
end

get '/users/new/' do
  erb :'users/_new', layout: false
end

get '/users/signin/' do
  erb :'users/_signin', layout: false
end

get '/users/signout' do
  session[:user_id] = nil
  redirect '/'
end

get '/users/edit/:id' do
  redirect_not_signin

  user = User.find(params[:id])

  erb :'users/edit', locals: {user: user}
end

get '/users/:id' do
  redirect_not_signin

  erb :'users/show'
end

post '/users/new' do
  redirect '/users/new?error=Password%20did%20not%20match'  unless params[:password] == params[:confirm_password]

  new_user = User.new(first_name: params[:first_name],
                      last_name:  params[:last_name],
                      email:      params[:email],
                      dob:        DateTime.parse(params[:dob]),
                      password:   params[:password])

  if new_user.save
    redirect "/users/#{new_user.id}"
  else
    [402, 'Something went wrong']
  end
end

post '/users/signin' do
  user = User.find_by(email: params[:email])

  if user && user.authenticate(params[:password])
    session[:user_id] = user.id
    redirect "/users/#{user.id}"
  else
    redirect '/users/signin?error=Wrong%20password'
  end
end

put 'users/edit/:id' do
  redirect_not_signin

end

