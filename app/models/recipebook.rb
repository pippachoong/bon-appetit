class Recipebook < ApplicationRecord
    has_and_belongs_to_many :dishes

    belongs_to :user, optional: true

end
