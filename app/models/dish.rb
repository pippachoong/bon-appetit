class Dish < ApplicationRecord

    belongs_to :user, optional: true

end
