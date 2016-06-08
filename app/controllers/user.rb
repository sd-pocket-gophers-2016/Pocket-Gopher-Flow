get '/user/new' do
  @user = User.new
  erb :'users/new'
end

post '/user' do
  @user = User.create(params[:user])
  redirect '/user/new'
end
