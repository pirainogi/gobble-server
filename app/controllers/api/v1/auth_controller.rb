class Api::V1::AuthController < ApplicationController

  def create
    user = User.find_by(email: params[:email])
    if user && user.authenticate(params[:password])
      jwt = encode_token(user.id)
      render json: {user: UserSerializer.new(user), jwt: jwt}
    else
      render json: {errors: "Login cannot be completed. Please try again."}
    end
  end

  def auto_login
    if logged_in
      render json: curr_user
    else
      render json: {errors: "Login cannot be completed. Please try again."}
    end
  end

end
