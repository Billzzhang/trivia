class Question < ApplicationRecord
<<<<<<< HEAD
  belongs_to :category
  belongs_to :difficulty
  has_one :correct_answer, :dependent => :destroy
  has_many :incorrect_answers, :dependent => :destroy
=======
    belongs_to :category
    belongs_to :difficulty
    has_one :correct_answer, :dependent => :destroy
    has_many :incorrect_answers, :dependent => :destroy
>>>>>>> a00b0871cf83f4b2e964315118b6f465c0c0e87a
end
