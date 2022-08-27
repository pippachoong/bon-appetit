class Comment < ApplicationRecord

    belongs_to :dish, optional: true

end
