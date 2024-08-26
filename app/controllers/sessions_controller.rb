class SessionsController < ApplicationController
  def new
  end

  def create
    @user = User.find_by(name: params[:name])
    return head(:forbidden) unless @user.authenticate(params[:password])
    session[:user_id] = @user.id
  end

  # def new
	# end

	# def create
  #   if params[:name].present?
  #     session[:name] = params[:name]
  #     redirect_to root_path
  #   else
  #     redirect_to '/login'
  #   end
	# end
end