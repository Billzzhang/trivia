class Category < ApplicationRecord
    has_many :questions, :dependent => :destroy
    has_many :users, through: :user_categories, :dependent => :destroy
end
