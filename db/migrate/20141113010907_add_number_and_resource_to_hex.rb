class AddNumberAndResourceToHex < ActiveRecord::Migration
  def change
    add_reference :hexes, :resouce, index: true
    add_column :hexes, :number, :integer
  end
end
