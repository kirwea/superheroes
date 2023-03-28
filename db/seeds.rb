puts "Started seeding!!"

# Create 10 Heroes
10.times do
    name = Faker::Games::Heroes.name
    super_name = Faker::Games::Heroes.specialty
    Hero.create(name: name, super_name: super_name)
end

# Create 20 Powers

20.times do
    name = Faker::Superhero.power
    description = Faker::Lorem.paragraph_by_chars(number: 25)
    Power.create(name: name, description: description)
end

# Create 30 HeroPowers

30.times do
    arr = ["Strong", "Weak", "Average"]

    strength = arr[rand(arr.count)]
    power_id = rand(1..20)
    hero_id = rand(1..10)
    HeroPower.create(strength: strength, power_id: power_id, hero_id: hero_id)
end

puts "Completed seeding!!"

