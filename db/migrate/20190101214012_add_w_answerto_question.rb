class AddWAnswertoQuestion < ActiveRecord::Migration[5.2]
  def change
    add_reference :incorrect_answers, :question, index: true, foreign_key: true
  end
end
