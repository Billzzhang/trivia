class Dropincorrectanswers < ActiveRecord::Migration[5.2]
  def change
    drop_table :incorrect_answers
  end
end
