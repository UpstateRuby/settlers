class AddResourceToHex < ActiveRecord::Migration
  def change
    add_column :hexes, :resource, :string
  end
end
