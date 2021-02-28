class UsersController < ApplicationController
  # POST users/new
  def new
    @user = User.new(user_params)

    if @user.save
      render json: { user: @user }, status: :created
    else
      render json: { errors: @user.errors }, status: :unprocessable_entity
    end
  end

  private

  def user_params
    params.permit(:name)
  end
end
