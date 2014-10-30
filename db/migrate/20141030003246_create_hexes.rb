class CreateHexes < ActiveRecord::Migration
  def change
    create_table :hexes do |t|

      t.timestamps
    end
  end
end
