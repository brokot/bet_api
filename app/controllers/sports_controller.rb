class SportsController < ApplicationController
  # POST users/new
  def new
    @sport = Sport.new(sport_params)

    if @sport.save
      render json: { sport: @sport }, status: :created
    else
      render json: { errors: @sport.errors }, status: :unprocessable_entity
    end
  end

  private

  def sport_params
    params.permit(:user_id, :name)
  end
end
