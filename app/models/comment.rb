class Comment < ApplicationRecord

    belongs_to :dish, optional: true
    
    validates :review, presence: true


end
