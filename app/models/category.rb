class Category < ApplicationRecord
    has_many :questions, :dependent => :destroy
<<<<<<< HEAD
=======
    has_many :users, through: :user_categories, :dependent => :destroy
>>>>>>> a00b0871cf83f4b2e964315118b6f465c0c0e87a
end
