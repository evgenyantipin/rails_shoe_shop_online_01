User.create!(name: "Example User", email: "example@railstutorial.org",
  password: "foobar", password_confirmation: "foobar", admin: true,
  activated: true, activated_at: Time.zone.now)

5.times do |n|
  name = Faker::Name.name
  email = "example-#{n+1}@railstutorial.org"
  password = "password"
  User.create!(name: name, email: email, password: password,
    password_confirmation: password, activated: true,
    activated_at: Time.zone.now)

Category.destroy_all
4.times do
  Category.create(name: Faker::Dog.name)
end
20.times do
  Shoe.create(name: Faker::Dog.name, category_id: Faker::Number.between(1, 4), img_url: Faker::Avatar.image)
end
