class Ingredient < ApplicationRecord
    has_many :ing_recs
    has_many :recipes, through: :ing_recs
end
