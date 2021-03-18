class ApplicationRecord < ActiveRecord::Base
  self.abstract_class = true
end

# Models - Patient - Full Name: string, email: string, DOB: date, state: string, product id
# Products - name: string, ndc: string, qty: integer, price: integer, instructions: string, category idd
# Categories - Name: String