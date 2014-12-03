class AddThemeReferenceToGame < ActiveRecord::Migration
  def change
    add_reference :games, :theme, index: true
  end
end
