# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

<<<<<<< HEAD
user1 = User.new(first_names: "Ollie", surname: "Holden", start_date: "12-05-2016", course_path: "Engineering", bio: "This is my bio for my page.", email: 'user@mail.com', password: 'password', password_confirmation: 'password')
user2 = User.new(first_names: "Charlotte", surname: "Leedham", start_date: "04-09-2017", course_path: "Engineering", bio: "This is my bio for my page", email: 'cleedham@spartaglobal.com', password: 'password', password_confirmation: 'password')
user3 = User.new(first_names: "Abass", surname: "Khan", start_date: "04-09-2017", course_path: "Engineering", bio: "This is my bio for my page", email: 'akhan@spartaglobal.com', password: 'password', password_confirmation: 'password')
user4 = User.new(first_names: "James", surname: "O'Neill", start_date: "04-09-2017", course_path: "Engineering", bio: "This is my bio for my page", email: 'joneill@spartaglobal.com', password: 'password', password_confirmation: 'password')


user1.save!
user2.save!
user3.save!
user4.save!
=======
user1 = User.new(first_names: "Ollie", surname: "Holden", start_date: "12-05-2016", course_path: "Engineering", email: 'user@mail.com', password: 'password', password_confirmation: 'password', user_type: true)
user2 = User.new(first_names: "Luke", surname: "Hemingway", start_date: "04-09-2017", course_path: "Engineering", email: 'user2@mail.com', password: 'password', password_confirmation: 'password', user_type: false)



user1.save!
user2.save!

project1 = Project.create!(screenshot: "http://fillmurray.com/300/300", description: "Desc2", technologies: "JQuery", url: "Project Link 1", public_private: true, title:"Project osphellius 1")
project2 = Project.create!(screenshot: "http://fillmurray.com/300/300", description: "Desc2", technologies: "JQuery", url: "Project Link 2", public_private: true, title:"Project osphellius 2")
project3 = Project.create!(screenshot: "http://fillmurray.com/300/300", description: "Desc2", technologies: "JQuery", url: "Project Link 3", public_private: true, title:"Project osphellius 3")
project4 = Project.create!(screenshot: "http://fillmurray.com/300/300", description: "Desc2", technologies: "JQuery", url: "Project Link 4", public_private: true, title:"Project osphellius 4")
project5 = Project.create!(screenshot: "http://fillmurray.com/300/300", description: "Desc2", technologies: "JQuery", url: "Project Link 5", public_private: true, title:"Project osphellius 5")
project6 = Project.create!(screenshot: "http://fillmurray.com/300/300", description: "Desc2", technologies: "JQuery", url: "Project Link 6", public_private: true, title:"Project osphellius 6")
project7 = Project.create!(screenshot: "http://fillmurray.com/300/300", description: "Desc2", technologies: "JQuery", url: "Project Link 7", public_private: true, title:"Project osphellius 7")
project8 = Project.create!(screenshot: "http://fillmurray.com/300/300", description: "Desc2", technologies: "JQuery", url: "Project Link 8", public_private: true, title:"Project osphellius 8")
project9 = Project.create!(screenshot: "http://fillmurray.com/300/300", description: "Desc2", technologies: "JQuery", url: "Project Link 9", public_private: true, title:"Project osphellius 9")
>>>>>>> dev

project2 = Project.create!(screenshot: "atom-game.png", description: "This is my first Sparta Global project. It is a game I created.", technologies: "HTML, CSS, Bootstrap, JavaScript, JQuery", url: "https://kh4n10.github.io/firstProject/", public_private: true, title:"Atom Project")
project3 = Project.create!(screenshot: "monkeys-and-bananas.png", description: "This is my first Sparta Global Project", technologies: "HTML, CSS, Bootstrap, JavaScript, JQuery", url: "https://charlieee18.github.io/Project-One/", public_private: true, title:"Monkeys and Bananas Project")
project4 = Project.create!(screenshot: "squash-the-bug.png", description: "This is my first Sparta Global Project", technologies: "HTML, CSS, Bootstrap, JavaScript, JQuery", url: "https://ginxty.github.io/Project-Mole/", public_private: true, title:"Squash The Bug")

user2.projects << project3
user3.projects << project2
user4.projects << project4

<<<<<<< HEAD
user2.save!
user3.save!
user4.save!
=======
user1.projects << project2
user1.projects << project3
user1.projects << project4
user1.projects << project5
user1.projects << project6
user1.projects << project7
user1.projects << project8
user1.projects << project9
user1.projects << project1
>>>>>>> dev



