class Api::V1::UsersController < ApplicationController
  before_action :set_user, only: [:show]
  skip_before_action :verify_authenticity_token

  # GET /users
  def index
    @users = User.all
    render json: @users
  end

  def sign_in
    @user = User.find_by(name: params[:name])
    if @user
      render json: @user, status: :ok
    else
      render json: { error: 'User not found' }, status: :not_found
    end
  end

  # GET /users/1
  def show
    render json: @user
  end

  # POST /users
  def create
    @user = User.new(user_params)

    if @user.save
      render json: @user, status: :created
    else
      render json: @user.errors, status: :unprocessable_entity
    end
  end

  def new
    @user = User.new
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_user
    @user = User.find(params[:id])
  end

  # Only allow a trusted parameter "white list" through.
  def user_params
    params.require(:user).permit(:name)
  end
end
