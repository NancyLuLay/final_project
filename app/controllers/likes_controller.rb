class LikesController < ApplicationController
	before_action :authenticate_user!

	def create
	post = Post.find params[:post_id]
	like = Like.new user: current_user, post: post
		if can? :like, post
			like.save
			redirect_to posts_path
		else
			redirect_to posts_path
		end
	end

	def destroy
		post = Post.find params[:post_id]
		like = Like.find params[:id]
		if can? :destroy, like
			like.destroy
			redirect_to posts_path
		else
			redirect_to posts_path
		end
	end

end
