class CreateDevelopmentCards < ActiveRecord::Migration
  def change
    create_table :development_cards do |t|

      t.timestamps
    end
  end
end
