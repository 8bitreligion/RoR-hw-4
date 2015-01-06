class PostsController < ApplicationController

	def index
		@posts = Post.all #this will show all posts for your app, if you want to only show a users posts...
		# @oosts = Post.where(user_id: @user.id)
		@user = User.where(params[:user_id]).first # this will give you an error if you try to go to /posts, but since you dont have routes for that it is ok
	end

	def show
		@posts = Post.find(params[:id]) #same as above, to scope to the user '/users/1/posts/1'...
		# @user = User.where(params[:user_id]).first
		# @post = @user.posts.find(params[:id]) # note that @post is singular for showing 1 post
	end

	def new
		@post = Post.new # same idea as above
		@user = User.where(params[:user_id]).first
		
		# @post = @user.posts.new # this will creata new post for a specific user if desired (not required)
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
	
	####################
	# missing methods
	def edit
	end
	
	def update
	end
	
	def destroy
	end
	
end



