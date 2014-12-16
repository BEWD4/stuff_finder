# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

user = User.first

to_rent = Category.where(name: 'rent').first_or_create!
for_sale = Category.where(name: 'sale').first_or_create!

[
  { user: user,
    category: to_rent,
    title: 'lovely condo',
    description: 'lorem ipsum lorem ipsum'
},
{ user: user,
  category: for_sale,
  title: 'cool flat',
  description: 'lorem ipsum lorem ipsum'
},
].each do |condition|
  Ad.where(condition).first_or_create
end

