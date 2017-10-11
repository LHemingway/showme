# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

user1 = User.create(email: 'user@mail.com', password: 'password')

project2 = Project.create(screenshot: "http://fillmurray.com/400/300", description: "Desc2", technologies: "JQuery", url: "http://fillmurray.com/300/300", public_private: true, title:"Project osphellius 1")
project3 = Project.create(screenshot: "http://fillmurray.com/400/300", description: "Desc2", technologies: "JQuery", url: "http://fillmurray.com/300/300", public_private: true, title:"Project osphellius 1")
project4 = Project.create(screenshot: "http://fillmurray.com/400/300", description: "Desc2", technologies: "JQuery", url: "http://fillmurray.com/300/300", public_private: true, title:"Project osphellius 1")
project5 = Project.create(screenshot: "http://fillmurray.com/400/300", description: "Desc2", technologies: "JQuery", url: "http://fillmurray.com/300/300", public_private: true, title:"Project osphellius 1")
project6 = Project.create(screenshot: "http://fillmurray.com/400/300", description: "Desc2", technologies: "JQuery", url: "http://fillmurray.com/300/300", public_private: true, title:"Project osphellius 1")
project7 = Project.create(screenshot: "http://fillmurray.com/400/300", description: "Desc2", technologies: "JQuery", url: "http://fillmurray.com/300/300", public_private: true, title:"Project osphellius 1")
project8 = Project.create(screenshot: "http://fillmurray.com/400/300", description: "Desc2", technologies: "JQuery", url: "http://fillmurray.com/300/300", public_private: true, title:"Project osphellius 1")
project9 = Project.create(screenshot: "http://fillmurray.com/400/300", description: "Desc2", technologies: "JQuery", url: "http://fillmurray.com/300/300", public_private: true, title:"Project osphellius 1")
project10= Project.create(screenshot: "http://fillmurray.com/400/300", description: "Desc2", technologies: "JQuery", url: "http://fillmurray.com/300/300", public_private: true, title:"Project osphellius 1")



user1.projects << project2
user1.projects << project3
user1.projects << project4
user1.projects << project5
user1.projects << project6
user1.projects << project7
user1.projects << project8
user1.projects << project9
user1.projects << project10