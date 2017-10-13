# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


user1 = User.new(first_names: "Ollie", surname: "Holden", start_date: "12-05-2016", course_path: "Engineering", bio: "This is my bio for my page.", email: 'oholden@spartaglobal.com', password: 'password', password_confirmation: 'password', user_type: true)
user2 = User.new(first_names: "Charlotte", surname: "Leedham", start_date: "04-09-2017", course_path: "Engineering", bio: "This is my bio for my page", email: 'cleedham@spartaglobal.com', password: 'password', password_confirmation: 'password', user_type: false)
user3 = User.new(first_names: "Abass", surname: "Khan", start_date: "04-09-2017", course_path: "Engineering", bio: "This is my bio for my page", email: 'akhan@spartaglobal.com', password: 'password', password_confirmation: 'password', user_type: false)
user4 = User.new(first_names: "James", surname: "O'Neill", start_date: "04-09-2017", course_path: "Engineering", bio: "This is my bio for my page", email: 'joneill@spartaglobal.com', password: 'password', password_confirmation: 'password', user_type: false)


user1.save!
user2.save!
user3.save!
user4.save!


project2 = Project.create!(screenshot: "atom-game.png", description: "This is my first Sparta Global project. It is a game I created.", technologies: "HTML, CSS, Bootstrap, JavaScript, JQuery", url: "https://kh4n10.github.io/firstProject/", public_private: true, title:"Atom Project")
project3 = Project.create!(screenshot: "monkeys-and-bananas.png", description: "This is my first Sparta Global Project", technologies: "HTML, CSS, Bootstrap, JavaScript, JQuery", url: "https://charlieee18.github.io/Project-One/", public_private: true, title:"Monkeys and Bananas Project")
project4 = Project.create!(screenshot: "squash-the-bug.png", description: "This is my first Sparta Global Project", technologies: "HTML, CSS, Bootstrap, JavaScript, JQuery", url: "https://ginxty.github.io/Project-Mole/", public_private: true, title:"Squash The Bug")

user2.projects << project3
user3.projects << project2
user4.projects << project4


user2.save!
user3.save!
user4.save!




