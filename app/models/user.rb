class User < ApplicationRecord
    
    has_many :recipes
    validates :name,  presence: true
    validates :age, numericality: {greater_than: 10}
end
