get '/users' do
  @user = User.all
  erb :'index'
end

get '/users/new' do
  erb :'users/new'
end

post '/users' do
  @user = User.create(params[:user])
  if @user.valid?
    redirect '/users'
  else
    status 422
    @errors = @user.errors.full_messages
    erb :'users/new'
  end
end

get '/users/login' do
  @user = User.new
  erb :'/users/login'
end

post '/users/login' do
  @user = User.authenticate(params[:user][:email], params[:user][:password])

  if @user
    session[:user_id] = @user.id
    redirect '/users'
  else
    @errors = ['hi']
    erb :'/users/login'
  end
end

get '/users/logout' do

end
