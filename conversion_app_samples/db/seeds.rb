# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

products = [{
				product_id: 1,
				product: "Analgésico ABC",
				category_id: 1,
				category: "Analgésicos"
			},
			{
				product_id: 2,
				product: "Analgésico XYZ",
				category_id: 1,
				category: "Analgésicos"
			},
			{
				product_id: 3,
				product: "Antigripal ABC",
				category_id: 2,
				category: "Antigripal"
			},
			{
				product_id: 4,
				product: "Antigripal XYZ",
				category_id: 2,
				category: "Antigripal"
			},
			{
				product_id: 5,
				product: "Câncer ABC",
				category_id: 3,
				category: "Câncer"
			},
			{
				product_id: 6,
				product: "Câncer XYZ",
				category_id: 3,
				category: "Câncer"
			}]

states = [{
			state_id: 1,
			state: "PR",
			city_id: 1,
			city: "Curitiba"
		},
		{
			state_id: 1,
			state: "PR",
			city_id: 3,
			city: "Maringá"
		},
		{
			state_id: 2,
			state: "SP",
			city_id: 3,
			city: "São Paulo"
		},
		{
			state_id: 2,
			state: "SP",
			city_id: 3,
			city: "Osasco"
		}]

referals = [{
			referal_id: 1,
			referal: "Busca",
		 },
		 {
			referal_id: 2,
			referal: "Minhas Listas",
		 },
		 {
			referal_id: 3,
			referal: "Categorias",
		 }]


users = []
200.times do |i|
	id = i
	gender = rand(1..2)
	age = rand(20..60)
	users.push({id: id, gender: gender, age: age})
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
# t.integer :hour_id
# t.integrer :is_converted

1000.times do 
	products_sample = products.sample
	user_sample = users.sample
	state_sample = states.sample
	referal_sample = referals.sample
	c = Conversion.new(
		user_id: user_sample[:id],
		user_gender: user_sample[:gender],
		user_age: user_sample[:age],
		state_id: state_sample[:state_id],
		state: state_sample[:state],
		city_id: state_sample[:city_id],
		city: state_sample[:city],
		product_id: products_sample[:product_id],
		product: products_sample[:product],
		category_id: products_sample[:category_id],
		category: products_sample[:category],
		price: rand(1..100),
		referal_id: referal_sample[:referal_id],
		referal: referal_sample[:referal],
		weekday_id: rand(1..7),
		hour_id: rand(6..24),
		is_converted: [0,1].sample
 	)
	c.save
end
