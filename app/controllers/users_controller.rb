class UsersController < ApplicationController
  before_action :set_user, only: %i[bets]

  # POST users/new
  def new
    @user = User.new(user_params)

    if @user.save
      render json: { user: @user }, status: :created
    else
      render json: { errors: @user.errors }, status: :unprocessable_entity
    end
  end

  # GET users/:id/bets
  def bets
    @bets = @user.bets
    render json: { bets: @bets }, status: :ok
  end

  private

  def set_user
    @user = User.find(params[:id])
  end

  def user_params
    params.permit(:name)
  end
end
