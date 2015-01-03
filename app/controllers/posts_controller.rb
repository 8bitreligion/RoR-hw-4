class PostsController < ApplicationController

	def index
		@posts = Post.all
		@user = User.where(params[:user_id]).first
	end

	def show
		@posts = Post.find(params[:id])
	end

	def new
		@post = Post.new
		@user = User.where(params[:user_id]).first
	end

	def create
		@posts = Post.new(params[:id])

		if @posts.save 
			flash[:notice] = "Post successfully created!"
			redirect_to user_posts_path
		else
			flash[:alert] = "Your post could not be saved"
			redirect_to user_posts_path
		end
			
	 end

	end



