get '/user/new' do
  @user = User.new
  erb :'users/new'
end

post '/user' do
  @user = User.create(params[:user])
  if @user.valid?
    redirect '/user/new'
  else
    status 422
    @errors = @user.errors.full_messages
    erb :'users/new'
  end
end

get '/user/login' do
  erb :'user/login'
end
