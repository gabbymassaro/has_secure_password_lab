class UsersController < ApplicationController
  def new
  end

  def create
    if params[:password] != params[:password_confirmation]
      render :new
    else
      @user = User.new(user_params)
      if @user.save
        session[:user_id] = @user.id
        redirect_to root_path
      else
        redirect_to new_user_path
      end
    end
  end

  private

  def user_params
    params.require(:user).permit(:name, :password, :password_confirmation)
  end
end