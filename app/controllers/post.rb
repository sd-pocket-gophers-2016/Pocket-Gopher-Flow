get '/' do
  redirect '/posts'
end

get '/posts' do
  @posts = Post.all
  erb :'/posts/index'
end

get '/posts/new' do
  if !@current_user
    @post = Post.new
    @current_id = session[:id]
    erb :'/posts/new'
  else
    redirect '/users/login'
  end
end

post '/posts/new' do
  @current_user
  Post.create(user_id: session[:id], title: params[:title], content: params[:content])
  redirect '/posts'
end

get '/posts/:id' do
  @post = Post.find(params[:id])
  @user = User.find(@post.user_id)
  @post_id = @post.id
  @user_id = session[:user_id]
  erb :'/posts/show'
end

post '/posts/:id/answers/new' do

  # @post = Post.find(params[:id])
  # @post_id = @post.id
  #needs comment, user_id, post_id
  # answer = Answer.create(content: params[:content], user_id: session[:id], post_id: @post_id)
  # if request.xhr?
  #   content_type :json
  #   {user_id: , post_id: , content: answer, }
  redirect '/posts/:id'

  # answer = Answer.create(params[:id], user_id: session[:id], )
  # if request.xhr?
  #   content_type :json
  #   {user_id: , post_id: , content: answer, }

end

