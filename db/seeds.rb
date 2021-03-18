# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Patient.delete_all

State.delete_all
for state in STATES do
    State.create(:name => state[0], :abbreviation => state[1], :services => state[2], :min_age => state[3])
end

Product.delete_all
for prod in PRODUCTS do 
    cat = Category.find_by name: prod[:category]
    Product.create(:name => prod[:name], :ndc => prod[:ndc], :qty => prod[:qty], :price => prod[:price], :instructions => prod[:instructions], :category => cat)
end

Category.delete_all
for cat in CATEGORIES do
    Category.create(:name => cat)
end


print('seeding complete')