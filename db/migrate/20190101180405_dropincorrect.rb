class Dropincorrect < ActiveRecord::Migration[5.2]
  def change
    drop_table :incorrect_answer
  end
end
