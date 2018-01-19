# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

products = [{
				product_id: 1,
				category_id: 1
			},
			{
				product_id: 2,
				category_id: 1
			},
			{
				product_id: 3,
				category_id: 1
			},
			{
				product_id: 4,
				category_id: 2
			},
			{
				product_id: 5,
				category_id: 2
			},
			{
				product_id: 6,
				category_id: 2
			},
			{
				product_id: 7,
				category_id: 3
			},
			{
				product_id: 8,
				category_id: 3
			},
			{
				product_id: 9,
				category_id: 3
			},
			{
				product_id: 10,
				category_id: 4
			},
			{
				product_id: 11,
				category_id: 4
			},
			{
				product_id: 12,
				category_id: 4
			},
			{
				product_id: 13,
				category_id: 1
			},
			{
				product_id: 14,
				category_id: 2
			},
			{
				product_id: 15,
				category_id: 3
			},
			{
				product_id: 16,
				category_id: 4
			},
			{
				product_id: 17,
				category_id: 1
			},
			{
				product_id: 18,
				category_id: 2
			},
			{
				product_id: 19,
				category_id: 3
			},
			{
				product_id: 20,
				category_id: 4
			}
			]

user_samples = []
200.times do |i|
	id = i
	gender = rand(1..2)
	age = rand(20..60)
	user_samples.push({id: id, gender: gender, age: age})
end

# t.integer :user_id
# t.integer :user_gender
# t.integer :user_age
# t.integer :state_id
# t.string :state
# t.integer :city_id
# t.string :city
# t.integer :product_id
# t.string :product
# t.integer :category_id
# t.string :category
# t.float :price
# t.integer :referal_id
# t.string :referal
# t.integer :weekday_id
# t.string :week
# t.integer :hour_id
# t.string :hour

10000.times do 
	products_sample = products.sample
	user_sample = user_samples.sample
	c = Conversion.new(
		user_id: user_sample[:id],
		user_gender: user_sample[:gender],
		user_age: user_sample[:age],
		product_id: products_sample[:product_id],
		category_id: products_sample[:category_id],
		price: rand(1..100),
		weekday_id: rand(1..7),
		hour_id: rand(0..24)
 	)
	c.save
end
