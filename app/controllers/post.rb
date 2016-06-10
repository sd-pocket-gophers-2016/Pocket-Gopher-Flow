get '/' do
  redirect '/posts'
end

get '/posts' do
  @posts = Post.all
  erb :'/posts/index'
end

get '/posts/new' do
  if current_user
    @post = Post.new
    @current_id = session[:id]
    erb :'/posts/new'
  else
    redirect '/users/login'
  end
end

post '/posts/new' do
  current_user
  Post.create(user_id: session[:id], title: params[:title], content: params[:content])
  redirect '/posts'
end

get '/posts/:id' do
  @post = Post.find(params[:id])
  @user = User.find_by(id: @post.user_id)
  erb :'/posts/show'
end

post '/posts/:id/answers' do
  post = Post.find(params[:id])

  answer = Answer.create(content: params[:content], user_id: current_user.id, post_id: post.id)
  puts answer.to_json
  if request.xhr?
    content_type :json
    answer.to_json
  else
    redirect "/posts/#{params[:id]}"
  end

end

