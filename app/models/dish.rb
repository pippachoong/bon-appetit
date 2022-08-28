class Dish < ApplicationRecord

    belongs_to :user, optional: true
    
    has_many :comments, dependent: :destroy
                        #^ if i delete dish, delete all comments

    has_and_belongs_to_many :categories



end
