class Difficulty < ApplicationRecord
    has_many :questions, :dependent => :destroy
end
