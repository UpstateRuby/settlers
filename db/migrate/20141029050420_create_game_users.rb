class CreateGameUsers < ActiveRecord::Migration
  def change
    create_table :game_users do |t|
      t.references :user, index: true
      t.references :game, index: true

      t.timestamps
    end
  end
end
