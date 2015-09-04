class UsersController < ApplicationController
	before_action :check_if_logged_in, :only => [:index, :edit, :update]
	#do admin later

	def new
		@user = User.new
	end

	def create
		@user = User.new user_params
		if @user.save
			@user = @current_user
			redirect_to user_path(params[:id])
		else
			render :new
		end
	end

	def destroy
		user = User.find params[:id]
		user.destroy
		redirect_to root_path
	end

	def edit
		@user = @current_user
	end

	def update
		if @current_user.update user_params
			redirect_to user_path
		else
			render :edit
		end
	end

	private
	def user_params
		params.require(:user).permit(:email, :username, :name, :surname, :password, :password_confirmation)
	end

	def check_if_logged_in
  		redirect_to root_path unless @current_user.present?
 	 end
end