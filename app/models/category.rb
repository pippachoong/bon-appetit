class Category < ApplicationRecord

has_and_belongs_to_many :dishes

has_many :categories, through: 'dishes'

end
