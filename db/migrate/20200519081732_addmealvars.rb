class Addmealvars < ActiveRecord::Migration[6.0]
  def change
    add_column :meals, :title, :string
    add_column :meals, :description, :string
    add_column :meals, :house_rules, :text
    add_column :meals, :price, :float
    add_column :meals, :capacity, :integer
    add_column :meals, :address, :string
    add_column :meals, :datetime, :datetime
  end
end
