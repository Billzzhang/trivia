class Question < ApplicationRecord
    serialize :wrong_answers,Array
end
