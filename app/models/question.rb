class Question < ApplicationRecord
    belongs_to :category
    belongs_to :difficulty
    has_one :correct_answers
    has_many :incorrect_answers
end
