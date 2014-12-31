class UsersController < ApplicationController
	
	def index

    end

    def show
    	@user = User.find params[:id]

    end

    def edit
    
    end

    def new
    	@user = User.find params[:id]

    def create
    	@user = User.new(params[:user])

    end

    def update
    	@user = User.find params[:id]
    
    end

    def destroy
    	@user = User.find params[:id]
    	if @user.destroy

    end

end
