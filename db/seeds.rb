# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

users = User.create!([{ email: "baton@yahoo.ca", password: "123456"}, 
                    { email: "lavevaisselle@yahoo.ca", password: "123456"},
                    { email: "mononcle@yahoo.ca", password: "123456"}])
games = Game.create([{creator_id: 1, opponent_id: 2, winner_id: 1},
                    {creator_id: 1, opponent_id: 2, winner_id: 1},
                    {creator_id: 1, opponent_id: 3, winner_id: 1},
                    {creator_id: 2, opponent_id: 3, winner_id: 3},
                    {creator_id: 3, opponent_id: 1, winner_id: 1},
                    {creator_id: 3, opponent_id: 2, winner_id: 2},
                    {creator_id: 1, opponent_id: 2, winner_id: 2}])
