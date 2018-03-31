# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...

## Projects Tasks ##
### Install application in local development:
  Ruby: 2.5.0
  Rails: 5.1.5

### Bundle 
  bundle install

### Populate Database
  bundle exec rake db_tasks:rebuild
  
### About
  This is a working application that can add game categories and game titles

### Tasks
  General Description: create an open-ended api functionality for an external application to connect to this application

### 1) Get the following curls working:
  curl -G -d "" "http://gamelibrary.com:3000/v1/categories"<br />
  curl -G -d "" "http://gamelibrary.com:3000/v1/games"

### 2) Create an external app called "mygames"
  - Allow this app to retrieve a list of games and categories<br />
  - On the home page of mygames (http://mygames.com:3001), have it show a list of all category names. These will all be links that direct to their list of games.

### 3) Getting, Updating, Deleting on "mygames"
  - provide the ability to add/delete categories<br />
  - provide the ability to add/update/delete games

### 4) On home page, create a search field that displays all found games with the given search tag 
  ex: search_tag "bat" will find "Batman: Arkham City"<br />
  ex: search_tag "dead" or "Dead" will find "The Walking Dead"<br />
  - create an option to select category while searching (will have default option "All Categories")

### 5) File downloads
  On any list of games from a category link click, provide a button to place all games and their information into a txt or csv file and wrap that up into a zip file.  Clicking on the download button will allow a zip file to be downloaded into the ~/Downloads folder.

### Show the various types of techniques and organization you would use to accomplish this.


