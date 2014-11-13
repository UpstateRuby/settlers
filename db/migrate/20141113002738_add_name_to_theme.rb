class AddNameToTheme < ActiveRecord::Migration
  def change
    add_column :themes, :name, :string
  end
end
