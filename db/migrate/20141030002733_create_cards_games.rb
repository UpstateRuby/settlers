class CreateCardsGames < ActiveRecord::Migration
  def change
    create_table :cards_games do |t|

      t.timestamps
    end
  end
end
