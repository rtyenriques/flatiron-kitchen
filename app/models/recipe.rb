class Recipe < ApplicationRecord
    has_many :ingredients
    validates :name, presence: true  
    accepts_nested_attributes_for :ingredients
end
