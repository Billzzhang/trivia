class Question < ApplicationRecord
    belongs_to :category
    belongs_to :type
    has_one :correct_answer
    has_many :incorrect_answer
end
