class CreatePieces < ActiveRecord::Migration
  def change
    create_table :pieces do |t|

      t.timestamps
    end
  end
end
