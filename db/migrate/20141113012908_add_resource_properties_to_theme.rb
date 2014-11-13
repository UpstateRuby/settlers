class AddResourcePropertiesToTheme < ActiveRecord::Migration
  def change
    add_column :themes, :lumber_name, :string
    add_column :themes, :lumber_card_img_path, :string
    add_column :themes, :lumber_hex_img_path, :string

    add_column :themes, :brick_name, :string
    add_column :themes, :brick_card_img_path, :string
    add_column :themes, :brick_hex_img_path, :string

    add_column :themes, :ore_name, :string
    add_column :themes, :ore_card_img_path, :string
    add_column :themes, :ore_hex_img_path, :string

    add_column :themes, :grain_name, :string
    add_column :themes, :grain_card_img_path, :string
    add_column :themes, :grain_hex_img_path, :string

    add_column :themes, :wool_name, :string
    add_column :themes, :wool_card_img_path, :string
    add_column :themes, :wool_hex_img_path, :string

    add_column :themes, :desert_name, :string
    add_column :themes, :desert_card_img_path, :string
    add_column :themes, :desert_hex_img_path, :string
  end
end
