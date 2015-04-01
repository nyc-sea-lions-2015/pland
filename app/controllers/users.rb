get '/users/new' do
  erb :'users/new'
end

get '/users/signin' do
    erb :'users/signin'
end

get '/users/edit/:id' do
  user = User.find(params[:id])

  erb :'users/edit', locals: {user: user}
end

get '/users/:id' do

end

post '/users/new' do
  redirect to('/users/new?error=Password%20did%20not%20match')  unless params[:password] == params[:confirm_password]

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

end

put 'users/edit/:id' do

end

