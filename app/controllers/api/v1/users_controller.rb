class Api::V1::UsersController < ApplicationController

  def index
    @users = User.all
    render json: @users
  end

  def show
    @user = User.find(params[:id])
    render json: @user, status: :accepted
  end

  # def create 
  #   user = User.new(
  #     name: params[:name],
  #     username: params[:username],
  #     password: params[:password],
  #     profile_pic: params[:profile_pic],
  #     bio: params[:bio],
  #     allergies: params[:allergies],
  #     diet: params[:diet]
  #   )
  #
  #   if user.save
  #     jwt = encode_token(user.id)
  #     render json: {user: UserSerializer.new(user), jwt: jwt}
  #   else
  #     render json: {errors: user.errors.full_messages}
  #   end
  # end


  # def new
  #   @user = User.new
  # end

  # def create
  #   @user = User.create(user_params)
  #   if @user.valid?
  #     render json: @user, status: :accepted
  #   else
  #     render json: { errors: @user.errors.full_messages }, status: :unprocessible_entity
  #   end
  # end

  # def edit
  #   @user = User.find(params[:id])
  #   @user.update(user_params)
  #   render json: @user, status: :accepted
  # end
  #
  # def update
  #   @user = User.find(params[:id])
  #   @user.update(user_params)
  #   if @user.save
  #     render json: @user, status: :accepted
  #   else
  #     render json: { errors: @user.errors.full_messages }, status: :unprocessible_entity
  #   end
  # end


private

def user_params
  params.require(:user).permit(:name, :username, :password, :bio, :profile_pic, :allergies, :diet)
end


end
