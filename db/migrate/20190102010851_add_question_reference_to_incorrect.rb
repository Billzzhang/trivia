class AddQuestionReferenceToIncorrect < ActiveRecord::Migration[5.2]
  def change
    add_reference :incorrect_answers, :question, foreign_key: true
  end
end
