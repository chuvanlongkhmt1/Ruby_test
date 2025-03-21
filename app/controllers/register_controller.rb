class RegisterController < ApplicationController
  def create
    user = User.create!(user_params)
    session[:current_user_id] = user.id
    render json: {
      user: current_user.as_json(only: %i[id name email])
    }
  rescue ActiveRecord::RecordInvalid => e
    render json: {
      error: e.to_s
    }, status: :not_found
  end

  private

  def user_params
    params.permit(:id, :name,  :email, :password,)
  end
end
