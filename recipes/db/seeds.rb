require 'faker'
include Faker

50.times do 
  user = User.create(
    email: Faker::Internet.email,
    password: Faker::Internet.password(min_length: 8)
  )
  user.save!
end 

50.times do 
  Recipe.create(
    title: Faker::Food.dish,
    content: Faker::Food.description
  )
end 