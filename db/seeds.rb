# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

#Rake::Task ['db:drop'].invoke
#Rake::Task ['db:create'].invoke
#Rake::Task ['db:migrate'].invoke

def random_brand_id
  Brand.offset(rand(Brand.count)).first.id
end

Brand.create([
  {
    name: "Nike"
  }, {
    name: "Vans"
  }, {
    name: "Asics"
  }, {
    name: "Converse"
  }, {
    name: "Adidas"
  }, {
    name: "Jordan"
  }, {
    name: "Reebok"
  }, {
    name: "Ted Baker"
  }
])

def sneaker_price
  rand(1435..8900)
end

Sneaker_sex = ["F", "M"]
Sneaker_model = ["Huarache", "Gel", "Stars"]

def create_sneaker
  Sneaker.create(
    brand_id: random_brand_id,
    price: sneaker_price,
    sex: Sneaker_sex.sample,
    model: Sneaker_model.sample
  )
end

10.times do
  create_sneaker
  puts 'Sneaker created'
end
