# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
Tea.destroy_all
Customer.destroy_all

20.times do
  Tea.create!(
    title: Faker::Tea.variety,
    description: Faker::Tea.variety,
    temperature: Faker::Number.within(range: 120..210),
    brew_time: Faker::Number.within(range: 1..15)
  )
end
20.times do
  Customer.create!(
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.first_name,
    email: Faker::Internet.email,
    address: Faker::Address.full_address
  )
end