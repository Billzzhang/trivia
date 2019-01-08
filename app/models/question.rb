class Question < ApplicationRecord
    belongs_to :category
    belongs_to :difficulty
    has_one :correct_answer, :dependent => :destroy
    has_many :incorrect_answers, :dependent => :destroy
end
