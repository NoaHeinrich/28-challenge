class Category < ApplicationRecord
    has_many :products
    # although categories aren't used much in this application, having it available would make it far easier to scale
end
