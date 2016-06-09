post '/posts/:id/comments' do
	post = Post.find(params[:id])
	post.comments.create(content: params[:content], user_id: current_user.id, commentable_id: post.id, commentable_type: post)

	redirect '/posts/1'
	# if request.xhr?
	# 	# {content: params[:content], user_id: sessions[:id], commentable_id: post.id, commentable_type: post  }.to_json
	# else
	# 	redirect '/posts/:id'
	# end
end
# get '/comments/new' do
# 	if request.xhr?
# 		erb :'/comments/_new', locals: { action: "/posts/#{@post.id}/comments" }, layout: false
# 	else
# 		# regular render
# 	end
# end
