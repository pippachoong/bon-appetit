class Comment < ApplicationRecord

    belongs_to :dish, optional: true
    
    # validates :body, presence: true


end
