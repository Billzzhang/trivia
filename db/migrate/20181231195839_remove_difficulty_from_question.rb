class RemoveDifficultyFromQuestion < ActiveRecord::Migration[5.2]
  def change
    remove_column :questions, :difficulty, :string
  end
end
