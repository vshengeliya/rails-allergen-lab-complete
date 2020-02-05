class Ingredient < ApplicationRecord
    has_many :allergies
    has_many :users, through: :allergies
    has_many :ing_recs
    has_many :recipes, through: :ing_recs
end
