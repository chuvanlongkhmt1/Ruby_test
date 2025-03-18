class SessionsController < ApplicationController

  def signin
    user = User.find_by(email: params[:email])
  if user && user.authenticate(params[:password])
    session[:current_user_id] = user.id
      render json: {user:user}
    else
      render json:{errors:"invalid email"}
    end
  end

end
