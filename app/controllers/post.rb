get '/' do
  @posts = Post.all
  erb :'/posts/index'
end

get '/posts/:id' do
  @post = Post.find(params[:id])

  @user = User.find_by(id: @post.user_id)
  erb :'/posts/show'
end



