get '/' do
  redirect '/posts'
end

get '/posts' do
  @posts = Post.all
  erb :'/posts/index'
end

get '/posts/new' do
  if session[:user_id] != nil
    @post = Post.new
    erb :'/posts/new'
  else
    redirect '/users/login'
  end
end

post '/posts/new' do
  Post.create(params[:post])
  redirect '/'
end

get '/posts/:id' do
  @post = Post.find(params[:id])
  @user = User.find(@post.user_id)
  @post_id = @post.id
  @user_id = session[:user_id]
  erb :'/posts/show'
end

post '/answers/new' do
  answer = Answer.create(params[:id], user_id: session[:id], )
  if request.xhr?
    content_type :json
    {user_id: , post_id: , content: answer, }
end

