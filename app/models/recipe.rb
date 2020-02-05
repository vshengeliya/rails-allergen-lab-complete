class Recipe < ApplicationRecord
    belongs_to :user

    has_many :ing_recs
    has_many :ingredients, through: :ing_recs

end
