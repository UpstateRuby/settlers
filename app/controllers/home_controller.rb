class HomeController < AuthenticatedController

  def index
    @games = current_user.games
  end

  def show
    @game = Game.first
  end


end