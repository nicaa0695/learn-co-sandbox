require 'faker'
include Faker

20.times do 
  User.create(
    email: Faker::Internet.email,
    password: Faker::Internet.password(8)
  )
end 

20.times do 
  Recipe.create(
    title: Faker::Lorem.words(4)
    content: Faker::Lorem.paragraph(2)
  )
end 