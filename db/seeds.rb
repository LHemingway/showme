# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

user1 = User.create(email: 'user@gmail.com', password: 'password')

project1 = Project.create(screenshot: "Luke.jpg", description: "healthy", technologies: "burley", url: "http://fillmurray.com/300/300", public_private: true)
project2 = Project.create(screenshot: "taco.jpg", description: "unhealthy", technologies: "headingley", url: "http://fillmurray.com/300/300", public_private: true)

user1.projects << project1
user1.projects << project2