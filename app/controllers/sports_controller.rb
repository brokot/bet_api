class SportsController < ApplicationController
  before_action :set_sport, only: %i[bets]

  # POST users/new
  def new
    @sport = Sport.new(sport_params)

    if @sport.save
      render json: { sport: @sport }, status: :created
    else
      render json: { errors: @sport.errors }, status: :unprocessable_entity
    end
  end

  # GET sports/:id/bets
  def bets
    @bets = @sport.bets
    render json: { bets: @bets }, status: :ok
  end

  private

  def set_sport
    @sport = Sport.find(params[:id])
  end

  def sport_params
    params.permit(:user_id, :name)
  end
end
