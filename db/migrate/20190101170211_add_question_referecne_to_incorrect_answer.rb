class AddQuestionReferecneToIncorrectAnswer < ActiveRecord::Migration[5.2]
  def change
    add_reference :incorrect_answer, :question, foreign_key: true
  end
end
