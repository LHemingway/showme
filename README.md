# README
#Sparta App!!

### By Charlotte Leedham James O'Neill, Abass Khan and Luke Hemingway

This multi-page application is a cross-platform application complete with database.

## Purpose:
The task was given for the group to build a fully functioning app using our knowledge from the past five weeks. 

The app's primary purpose was to act as a portfolio of past and present Spartan Project. The users were Sparta Staff, existing Spartans and Trainee Spartans. All projects had to be publicly viewable but all other features had to be restricted to members only.

## Functionality:

This is a fully functioning web application which consits of a log in screen which leads to a homepage, the ability to edit your individual profile, create a new project, view existing projects, view your own projects and update your own profile.


## Implementation:
The app has been implemented using:

* HTML
* CSS 
* Bootstrap
* Ruby on Rails
 
### Building
#### The planning stage
Before the application was built there was planning on how to build this application and the key features and requirements of this app. As we were using Agile Methodology in this application we had to plan the sprints as well.

We divided the requirements up into individual user stories and then rated them into how big of a task they are.

The requirements for this app were: 

* To be able to log in to your account and have a profile.
* Upload your individual projects onto the site
* Be able to see other users on the site
* Have admin accounts to be able to add or remove accounts as required.
* To be able to navigate through the site easily
* As a trainer, be able to edit their individual profile and delete projects from user accounts as necessary.
* To be redirected after a user has either deleted an entry from the database or if they have completed a form.
* To be able to refine a search so that the user can navigate through projects easier
* To be responsive
* As a viewer of the project be able to see the image of the project, description, technologies and link of the project selected so that they could view the project in detail.
* Be able to fill out a form with screenshot, description, technology tags and a link and author to be able to create a project.

Once we had established the requirements we put these into user stories as follows:

1. **As A:** Spartan **I Want:** to be able to login to my account **So That:** I can view my user rights (edit, create and delete).
2. **As A:** Viewer of the site **I Want:** to be able to navigate through the site with headings of projects, users, new, login, signup, edit, search and filter **So That:** I can navigate through the site easily.
3. **As A:** Viewer of the site **I Want:** To see an index with tiles containing information about every project. **So That:** I can see all the projects and pick the ones that are of interest to me.
4. **As A:** Admin/Spartan **I Want:** To fill out a form with a screenshot, description, technology tags, a link and author **So That:** I can create a project with all the the information I need.
5. **As A:** Viewer of the project **I Want:** To see an image of the project, description, technologies and link of the project selected. **So That:** I can view the project content in detail.
6. **As A:** Trainee of Sparta Global. **I Want:** To edit my individual profile (image, bio) and upload my own projects. **So That:** Everything is up to date.
7. **As A:** Trainer of Sparta Global **I Want:** To be able to edit my individual profile as well as edit projects and have the ability to delete projects as I see fit. **So That:** I can override mistakes and keep everything up to date.
8. **As A:** Viewer of the website. **I Want:** To be able to access the website on mobile devices and desktop. **So That:** It doesn't restrict the device I use.
9. **As A:** Viewer of the site **I Want:** A clean and tasteful page layout. **So That:** I enjoy my experience and it ensures readability.
10. **As A:** Spartan/Admin **I Want:** To be redirected to the show page after completing the form **So That:** I can see my changes.
11. **As A:** Viewer of the website **I Want:** To be able to search for project titles. **So That:** I can search for things quicker and find specific projects.
12. **As A:** Spartan/Admin **I Want:** To be redirected to the index page after deleting an entry in the database. **So That:** I can see it has been removed.
13. **As A:** Viewer of the website **I Want:** To be able to filter projects by technology used on the index page. **So That:** I can be more efficient in my search for projects with specific technologies 

Once this had been completed it was about putting the key items into the sprint so they could be completed at the end of the two day sprint. The user stories that were prioritized were: 

1. **As A:** Spartan **I Want:** to be able to login to my account **So That:** I can view my user rights (edit, create and delete)
2. **As A:** Viewer of the site **I Want:** To be able to navigate through the site with headings of projects, users, new, login, signup, edit, search and filter **So That:** I can navigate easily
3. **As A:** Viewer of the site **I Want:** To see an index with tiles containing information about every project. **So That:** I can see all the projects and pick the ones that are of interest to me.
4. **As A:** Admin/Spartan **I Want:** To fill out a form with a screenshot, description, technology tags, a link and author **So That:** I can create a project with all the the information I need.
5. **As A:** Viewer of the project **I Want:** To see an image of the project, description, technologies and link of the project selected. **So That:** I can view the project content in detail.
6. **As A:** Trainee of Sparta Global. **I Want:** To edit my individual profile (image, bio) and upload my own projects. **So That:** Everything is up to date.

After this he entity relationship diagram could be made. The users could have many projects so we decided to include a join table into the database for this.

There then had to be the columns in the database that defined the project and the user. 

For the **User** we decided to use:

* Full Name: string
* Email: string
* Avatar: text
* Start Date: TimeDate
* Course Path: string
* User Type: boolean

For the **Project** we decided to use:

* Screenshot: text
* Description: text
* Technologies: text
* URL: string
* private_boolean: boolean


The next step in planning was deciding on the definition of done.

###### Definition of Done:

* Code indented
* Code correctly commented
* Correct Filestructure
* Styling to defined Standards
* Code DRY
* Tested to be functioning
* Responsive
* No conflicts
* No console logs
* Peer Reviewed
* Done to the client requirements

The first task after all of the planning was to scaffold the app so we had all the necessary files for the task

#### Sprint One!
##### Day 1!

Firstly the team decided who was going to do which task in this sprint.

###### Abass 

Styled the index page so that it would have Bootstrap Cards to get the projects showing on the page.

He also decided to make sure that the public can only see the index and show page and that they had no access to any of the features within this application unless they were logged in. Once the users were logged in the users had access to all the features so they can create edit and delete.

###### Luke and Abass 
They attempted to create the many to many relationships 

They also added extra fields in the profile form so it included first and last name, email etc.

They also put the correct methods in the controllers so that the url's work correctly.

###### Luke 

Focussed on the database seeds and the relationships so that information about the users could be stored.

###### James and Abass
Created Wireframes in how we wanted the site to look.

Also created a functioning index page and focussed on core functionality of the site in general.

###### Charlotte

She focussed on the navbar so that you could easily navigate around the site and styled it with bootstrap so it could become responsive. 

She also got aspects of the navigation bar to lead to other parts of the page. If 'new' was clicked it would bring up the form to create the new project.

##### Day Two!
At the end of this sprint it was about making sure that all the issues from yesterday was resolved.

###### James

He worked on the styling to make sure that everything could be put into the 'done' section of our board as this was one of the definitions of done. 

He also worked on adding jumbotrons to the homepage so that it divided the page up better and looked better.

He made sure the cards were looking better.

He also made the links actually go somewhere when they are clicked on the navigation bar.

###### Abass and Luke

They created the many to many relationships and sorted the filepaths out so that the app is fully functioning.

They sorted out the users so that they had projects.

###### Charlotte

During today she has been doing the readme, documenting yesterday's achievements and issues throughout the day and has laid out the read me so it has a purpose and all the planning has been documented.

##### Sprint Review

##### Sprint Retrospective

#### Sprint Two Planning
### Sprint Two
#### Sprint Two Day One

##### James

Working on responsiveness of app and styling.

##### Charlotte 

Working on responsiveness of app at the start of the day, then got the project to redirect back to the show page when it had been edited and then went on to pair-programming with Abass

##### Charlotte and Abass

Working together to get the edit function working so that the user can edit the project if that project belongs to the user and if it does not belong to the user it will redirect them back to the homepage.

##### Abass
Spartan profiles so the spartans can view their own projects that they have created.

##### Sprint Two Day Two

##### Charlotte

Adding a Bio in the seeds file and updating the seeds file. Updating the App to include Bio in the Sign up and in the edit profile. Checking to make sure that it updates.

Creating the seed file to have actual projects so that it looks like the actual site rather than the prototype.

Styling the forms so that they looked nicer rather than just templates.

##### Abass

Working on Admin rights, being able to destroy projecgs and users.

##### James



## Issues
### Sprint One
#### Day One

There were a few issues that were raised at the end of day one. 

##### Issues related to the code

* Cards were not in an ordered list

* The navigation bar was not fully responsive and it would not display in a line so it was at the top, instead there were the problems of the search bar being underneath and being squashed in the left side of the page instead of spreading itself out.

* There were issues of conflicts when merging into github as some deleted work had to be put back in to make it functioning as well as some work not needing to be there and having to be deleted.

* The database would not store the correct data.

* The login system was not functioning properly and there were issues whether you were signed in.

##### Issues related to the group

* Trying to make all the workload equal so everybody had something to do and had something that they wanted to do so that no one was taking over the project.

* Working out when there was an error that could not be fixed knowing how to phrase it in Google so we could find the fix for the bug more efficiently.

* When errors were occurring knowing the correct file path and knowing where to go after if you were wrong the first time.

#### Day two
##### Issues related to the code

* Getting the navbar extended across the page instead of being in the left corner **Resolved:** Fixed the styling to expand the navbar across the page

* It was difficult to get the logic working due to the nesting **Resolved:** the logic is now working as it needs to

* Struggling to track all the div tags as there were a lot of div tags for one nav bar so trying to work out what they all did was a challenge.

##### Issues related to the group

There were no issues relating to the group today.

#### End of Sprint One

At the end of the sprint we had a website locally hosted but when trying to upload it to Heroku it failed. This means that we couldn't deliver any actual software at this point which was frustrating. This was due to the server not being uploaded at the same time so the site did not know where it was getting the information from.


### Sprint Two

#### Sprint Two Day One

##### Issues Related To The Code

##### Issues Related To The Group

#### Sprint Two Day Two
##### Issues Related To The Code
##### Issues Related To The Group

## Site
https://github.com/LHemingway/showme



