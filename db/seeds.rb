# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

user1 = User.create(name: 'Luma')
category1 = Group.create(name: 'Groceries', icon: 'test', author: user1)
category2 = Group.create(name: 'Credit', icon: 'test2', author: user1)
transaction1 = category1.log_records.create(author: user1, name: 'plaza', amount: 20)
transaction1.groups.push(category2)
