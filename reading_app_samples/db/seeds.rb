# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

articles_samples = [{
				article_id: 1,
				category_id: 1
			},
			{
				article_id: 2,
				category_id: 1
			},
			{
				article_id: 3,
				category_id: 1
			},
			{
				article_id: 4,
				category_id: 2
			},
			{
				article_id: 5,
				category_id: 2
			},
			{
				article_id: 6,
				category_id: 2
			},
			{
				article_id: 7,
				category_id: 3
			},
			{
				article_id: 8,
				category_id: 3
			},
			{
				article_id: 9,
				category_id: 3
			},
			{
				article_id: 10,
				category_id: 4
			},
			{
				article_id: 11,
				category_id: 4
			},
			{
				article_id: 12,
				category_id: 4
			},
			{
				article_id: 13,
				category_id: 1
			},
			{
				article_id: 14,
				category_id: 2
			},
			{
				article_id: 15,
				category_id: 3
			},
			{
				article_id: 16,
				category_id: 4
			},
			{
				article_id: 17,
				category_id: 1
			},
			{
				article_id: 18,
				category_id: 2
			},
			{
				article_id: 19,
				category_id: 3
			},
			{
				article_id: 20,
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

20000.times do 
	article_sample = articles_samples.sample
	user_sample = user_samples.sample
	c = User.new(
		user_id: user_sample[:id],
		user_gender: user_sample[:gender],
		user_age: user_sample[:age],
		article_id: article_sample[:article_id],
		category_id: article_sample[:category_id],
		avg_expending: rand(1..400),
		weekday_id: rand(1..7),
		hour_id: rand(0..24)
 	)
	c.save
end
