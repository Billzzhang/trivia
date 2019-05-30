class AddCategoryReferenceToQuestion < ActiveRecord::Migration[5.2]
  def change
    add_reference :questions, :difficulty, foreign_key: true
  end
end
