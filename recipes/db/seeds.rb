require 'faker'
include Faker

20.times do 
  user = User.create(
    email: Faker::Internet.email,
    password: Faker::Internet.password(min_length: 8)
  )
  user.save!
end 

20.times do 
  Recipe.create(
    title: Faker::Lorem.words(4),
    content: Faker::Lorem.paragraph(2)
  )
end 