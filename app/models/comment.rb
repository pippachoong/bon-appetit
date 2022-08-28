class Comment < ApplicationRecord

    belongs_to :dish

    validates :body, presence: true


end
