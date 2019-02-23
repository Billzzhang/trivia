class CreateQuestions < ActiveRecord::Migration[5.2]
  def change
    create_table :questions do |t|
      t.string :question
      t.references :category, foreign_key: true
      t.references :difficulty, foreign_key: true

      t.timestamps
    end
  end
end
