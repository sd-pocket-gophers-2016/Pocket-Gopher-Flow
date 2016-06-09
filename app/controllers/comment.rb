post '/posts/:id/comments' do
	post = Post.find(params[:id])
	comment = post.comments.create(content: params[:content], user: current_user, commentable: post)

	if request.xhr?
		content_type :json
		# {content: params[:content], user_id: current_user.id, commentable_id: post.id, commentable_type: post  }.to_json
		# comment_text = comment.content
		comment.to_json
		# puts (json_response = { comment: comment, comment_text: comment_text }.to_json)
		# json_response

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
