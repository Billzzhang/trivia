class ChangeDifficultyTypeColumnName < ActiveRecord::Migration[5.2]
  def change
    rename_column :difficulties, :type, :name
  end
end
