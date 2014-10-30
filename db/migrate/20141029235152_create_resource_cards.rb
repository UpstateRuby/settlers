class CreateResourceCards < ActiveRecord::Migration
  def change
    create_table :resource_cards do |t|
      t.string :type

      t.timestamps
    end
  end
end
