class CreateJoinTableUserCategories < ActiveRecord::Migration[5.2]
  def change
    create_join_table :Users, :Categories do |t|
      # t.index [:user_id, :category_id]
      # t.index [:category_id, :user_id]
    end
  end
end
