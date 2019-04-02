class Api::V1::AuthController < ApplicationController

  def create
    user = User.find_by(email: params[:email])
    if user && user.authenticate(params[:password])
      render json: user
    else
      render json: {errors: "Login cannot be completed. Please try again."}
    end
  end

end
