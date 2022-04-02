# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

user1 = User.create(name: 'Luma', email: 'luma@luma.xyz', password: '123123', password_confirmation: '123123')
category1 = Group.create(name: 'Groceries',
                         image: 'https://cdn-icons-png.flaticon.com/512/3050/3050209.png', author: user1)
category2 = Group.create(name: 'Credit', image: 'https://cdn-icons-png.flaticon.com/512/147/147258.png', author: user1)
transaction1 = category1.log_records.create(author: user1, name: 'plaza', amount: 20)
transaction1.groups.push(category2)
