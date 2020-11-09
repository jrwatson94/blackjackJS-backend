# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all
Hand.destroy_all

reid = User.create(name:"Reid", money: 500, wins:0, losses:0 )

hand1 = Hand.create(user_id:6, user_score: 21, dealer_score: 19, user_won: true)