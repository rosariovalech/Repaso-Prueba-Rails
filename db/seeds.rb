# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


Product.destroy_all
Category.destroy_all

c1 = Category.create!(name: "Electro")
c2 = Category.create!(name: "Hogar")
c3 = Category.create!(name: "Construccion")

["P1", "P2"].each do |product|
	Product.create!(category: c1, price: 100, name:"p1")
	Product.create!(category: c2, price: 200, name: "p2")
	c3.products.build(price:300, name: "p3").save!
end	


