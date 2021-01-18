# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Movie.create(title: "The Matrix", video_url: "http.www.secret.com")

Plan.create(name: "Small", stripe_id: "small-monthly", amount: 25_00, interval: "month")
Plan.create(name: "Small", stripe_id: "small-annual", amount: 250_00, interval: "year")
Plan.create(name: "Large", stripe_id: "large-monthly", amount: 25_00, interval: "month")
Plan.create(name: "Large", stripe_id: "large-annual", amount: 1000_00, interval: "year")