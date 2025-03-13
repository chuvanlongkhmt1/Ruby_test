class UsersController < ApplicationController
  def index
    @user=User.all
    render json: @user
  end

  def show
    @user = User.find(params["id"])
    render json: @user
  end

  def create
    @user = User.create(user_params)
    if @user.save
      render json: User.all
    else
      render json: errors(@user), status: 422
    end
  end

  def update
    @user = User.find(params["id"])
    if @user.update(user_params)
      render json: User.all
    else
      render json: errors(@user), status: 422
    end
  end

  def destroy
    if User.find(params["id"]).destroy!
      render json: User.all
    else
      render json: errors(@user), status: 422
    end
  end

  private

  def user_params
    params.require(:user).permit(:id, :name, :age)
  end
end
