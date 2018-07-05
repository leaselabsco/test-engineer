# LeaseLabs Engineering Assessment
Thank you for taking the time to participate in this assessment! Below you'll find all of the information you should need to complete this assessment. If you have any questions feel free to reach out to us.

### What We're Interested In

* Chosen techniques/deisgn used to make calls (note: specifically, the HTTP/REST gem can be as simple as HTTParty)
* Class organization
* Organization/Storage of constants/variables
* Proper error handling
* Structure that's scalable
* Code cleanliness
* How you can ensure integrity of functionality
* Use of modern coding procedures

## Project Tasks ##
### Install application in local environment:
  Ruby: 2.5.1
  Rails: 5.2.0

### Bundle
  bundle install

### Populate Database
  bundle exec rake db_tasks:rebuild

### About
  This is a working application that can add game categories and game titles

### Tasks
  General Description: create open-ended api functionality for an external application to connect to this application

### 1) Get the following curls working:
  curl -G -d "" "http://gamelibrary.com:3000/v1/categories"
  curl -G -d "" "http://gamelibrary.com:3000/v1/games"

### 2) Create an external app called "mygames"
  - Allow this app to retrieve a list of games and categories
  - On the home page of mygames (http://mygames.com:3001), have it show a list of all category names. These will all be links that direct to their list of games.

### 3) Getting, Updating, Deleting on "mygames"
  - provide the ability to add/delete categories
  - provide the ability to add/update/delete games

### 4) On home page, create a search field that displays all found games with the given search tag
  ex: search_tag "bat" will find "Batman: Arkham City"
  ex: search_tag "dead" or "Dead" will find "The Walking Dead"
  - Create an option to select category while searching (will have default option "All Categories")

### 5) File downloads
  Next to each category on the categories index view page, create a button link click that will place all games for that category and their information into a txt or csv file and wrap that up into a zip file.  Clicking on the download button will allow a zip file to be downloaded into the ~/Downloads folder.

### Complete all 5 steps above having each feature operational

**NOTE: For all 5 steps above, exhibit the various types of techniques and practices you would use to accomplish this.**

### Completion and Delivery
You can clone or fork this repo. When complete, email a link to submissions@leaselabs.com

**MIT License - Open Source** We have created this test as a simple assessment for front-end developers. If anyone else finds this useful, it's available for you to use anyway you like.
