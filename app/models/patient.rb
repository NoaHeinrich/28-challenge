class Patient < ApplicationRecord
  belongs_to :product, optional: true
  belongs_to :state
end
