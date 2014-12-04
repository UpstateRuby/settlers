class GamesController < AuthenticatedController

  respond_to :json

  def index
    games = Game.includes(:hexes).all.as_json(:include => :hexes)
    render json: games
  end

  def show
    game = Game.find(params[:id]).as_json(:include => :hexes)
    render json: game
  end

end