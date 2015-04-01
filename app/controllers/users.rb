get '/users/new' do
  erb :'users/new'
end

post '/users/new' do
  redirect to('/users/new?error=Password%20did%20not%20match')  unless params[:password] == params[:confirm_password]

#  Users.create()
end