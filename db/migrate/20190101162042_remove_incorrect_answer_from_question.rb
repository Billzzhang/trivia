class RemoveIncorrectAnswerFromQuestion < ActiveRecord::Migration[5.2]
  def change
    remove_column :questions, :incorrect_answer, :string
  end
end
