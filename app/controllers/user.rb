get '/users' do
  @user = User.all
  erb :'/users/index'
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
  session[:user_id] = nil
  redirect '/users/login'
end

get '/users/:id' do
  @user = User.find(params[:id])
  erb :'users/show'
end
