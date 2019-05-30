class AddIncorrectAnswerToQuestion < ActiveRecord::Migration[5.2]
  def change
    add_reference :questions, :question, foreign_key: true
  end
end
