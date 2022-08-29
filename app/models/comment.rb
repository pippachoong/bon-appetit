class Comment < ApplicationRecord

    belongs_to :dish, optional: true
    
    validates :review, presence: true

    belongs_to :user, optional: true

end
