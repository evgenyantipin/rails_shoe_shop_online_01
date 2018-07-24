Category.destroy_all
4.times do
  Category.create(name: Faker::Dog.name)
end
20.times do
  Shoe.create(name: Faker::Dog.name, category_id: Faker::Number.between(1, 4), img_url: Faker::Avatar.image)
end
