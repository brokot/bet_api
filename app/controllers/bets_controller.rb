class BetsController < ::ApplicationController
  # POST bets/new
  def new
    @bet = Bet.new(bet_params)

    if @bet.save
      render json: { bet: @bet }, status: :created
    else
      render json: { errors: @bet.errors }, status: :unprocessable_entity
    end
  end

  private

  def bet_params
    params.permit(:user_id, :sport_id, :odds, :status, :wager, :bet_type)
  end
end
