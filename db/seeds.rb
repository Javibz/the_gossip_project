
User.all.destroy_all
City.all.destroy_all
Gossip.all.destroy_all


10.times do |c|
  City.create(name:Faker::Nation.capital_city, postal_code:rand(1000..9000))
end

10.times do |n|
   User.create(first_name:Faker::FunnyName.name, last_name: Faker::FunnyName.name, description: Faker::StarWars.quote, email: Faker::Internet.email, age: rand(18..65), city_id:rand(City.first.id..City.last.id))
end

20.times do |g|
  Gossip.create(title:Faker::StarTrek.specie,content:Faker::StarWars.quote, date:Faker::Date.backward(100), user_id:rand(User.first.id..User.last.id))
end

10.times do |t|
  Tag.create(title:Faker::Color.color_name)
end

20.times do |index|
  Gossip.find(Gossip.first.id + index).tags << Tag.find(rand(Tag.first.id..Tag.last.id))
end