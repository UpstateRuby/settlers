class HomeController < AuthenticatedController

  def show
    @game = Game.first
  end


end