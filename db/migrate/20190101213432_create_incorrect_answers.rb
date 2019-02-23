class CreateIncorrectAnswers < ActiveRecord::Migration[5.2]
  def change
    create_table :incorrect_answers do |t|

    t.timestamps
    end
  end
end
