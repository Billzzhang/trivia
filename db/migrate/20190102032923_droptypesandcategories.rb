class Droptypesandcategories < ActiveRecord::Migration[5.2]
  def change
    drop_table :categories
    drop_table :types
  end
end
