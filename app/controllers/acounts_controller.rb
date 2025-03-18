class AcountsController < ApplicationController
  def new
  end

  def create
  #   @user = User.create(params.require(:user).permit(:username,:password))
  #  session[:user_id] = @user.id
  #  redirect_to '/welcome'
  end

  # def create
    # @user = User.find_by(username: params[:username])
    # if @user && @user.authenticate(params[:password])
    #    sessions[:user_id] = @user.id
    #    redirect_to '/welcome'
    # else
    #    redirect_to '/login'
    # end
  # end
end
