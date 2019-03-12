# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
users = User.create(
  { first_name: "Tina", middle_name: null, last_name: "Dinh La", email: "tdinhla@gmail.com", password_digest: "password", status: true, is_admin: true, experience: "Coding Bootcamp", career_level: "Entry Level"},
  { first_name: "Marcus", middle_name: null, last_name: "Hamill", email: "marcusehamill@gmail.com", password_digest: "password", status: true, is_admin: true, experience: "Coding Bootcamp", career_level: "Entry Level"},
  { first_name: "Joseph", middle_name: null, last_name: "Coyne", email: "me@josephcoyne.io", password_digest: "password", status: true, is_admin: true, experience: "Coding Bootcamp", career_level: "Entry Level"}
  )