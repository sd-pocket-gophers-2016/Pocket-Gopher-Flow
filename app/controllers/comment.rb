post '/posts/:id/comments' do
	@post = Post.find(params[:id])
	comment = @post.comments.create(content: params[:content], user: current_user, commentable: @post)
	if request.xhr?
		content_type :json
		comment.to_json
	else
		redirect "/posts/#{params[:id]}"
	end
end



# get '/comments/new' do
# 	if request.xhr?
# 		content_type :json
# 		erb :'/comments/_new', locals: { action: "/posts/#{@post.id}/comments" }, layout: false
# 	else
# 		# regular render
# 	end
# end
