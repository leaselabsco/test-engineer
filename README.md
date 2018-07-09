# LeaseLabs Engineering Assessment
Thank you for taking the time to participate in this assessment! Below you'll find all of the information you should need to complete this assessment. If you have any questions feel free to reach out to us.

### What We're Interested In

* Chosen techniques/methods/deisgn used to make calls (For the HTTP/REST API client library, can use HTTParty)
* Integrity of functionality
* Organization (classes, constants, variables)
* Proper error handling
* Structure that's scalable
* Code cleanliness
* Use of best practices
* Creativity

## Project Tasks ##
### Install application in local environment:
  - Ruby: 2.5.1
  - Rails: 5.2.0

### Bundle
  bundle install

### Populate Database
  bundle exec rake db_tasks:rebuild

### About
  This application alone, is a simple working application that can edit and maintain a game inventory

### Tasks
  General Description: create open-ended api functionality for an external application to connect to this application

### 1) Get the following curls working:
  - curl -G -d "" "http://gamelibrary.com:3000/v1/categories"
  - curl -G -d "" "http://gamelibrary.com:3000/v1/games"

### 2) Create an external app called "mygames"
  - Allow this app to retrieve a list of games and categories
  - On the home page of mygames (http://mygames.com:3001), have it show a list of all category names. These will all be links that direct to their list of games.

### 3) Getting, Updating, Deleting on "mygames"
  - provide the ability to add/delete categories
  - provide the ability to add/update/delete games

### 4) On home page, create a search field that displays all found games with the given search tag
  ex: search_tag "bat" will find "Batman: Arkham City"
  ex: search_tag "dead" or "king" will find "The Walking Dead"
  - Create an option to select category while searching (will have default option "All Categories")

### 5) File downloads
  Next to each category on the categories index view page, create a button link click that will place all games for that category and their information into a csv file and wrap that up into a zip file.  Clicking on the download button will allow a zip file to be downloaded into the computer's ~/Downloads folder.

### Complete all 5 steps above having each feature operational

**NOTE:** For all 5 steps above, exhibit the various types of techniques and practices you would use to accomplish each step. The completion of this goal can be accomplished many ways. Put foward your best effort. This assessment is meant to get an idea of how a backend engineer would choose to build this based on their experience.

  - You do not necessarily need any additional external tools other than the chosen the http/rest API client library gem
  - You can write everything you need to, using Ruby.
  - You are not subject to only what is asked. Add anything you need to make the solution more complete.
  - Update the base app if needed. Make your external app well-rounded.
  - Think about things like "What if 50 different external apps would connect to the base app?"

### Completion and Delivery
You can clone or fork this repo. All files code and submit can exists within the 2 applications.  When complete, email a link to submissions@leaselabs.com. Please submit the following:

 - your updated gamelibrary app
 - your new mygames app

**MIT License - Open Source** We have created this test as an assessment for backend-end developers. If anyone else finds this useful, it's available for you to use anyway you like.
