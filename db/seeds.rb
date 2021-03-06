# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Admin.create!(
  email: "admin@admin.com",
  password: 123456,
  password_confirmation: 123456
)

20.times do
  Product.create!(
    product_name: Faker::Commerce.product_name,
    price: Faker::Commerce.price,
    description: Faker::Lorem.paragraph(sentence_count: (1..5).to_a.sample)
  )
end

products = Product.all

products.each do |product|
  product.image.attach(io: File.open(Rails.root.join('tmp/images/BolaBasquetePenalty.webp')),
                       filename: 'BolaBasquetePenalty.webp')
end
