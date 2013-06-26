## Sinatra API and Files Lab - My Favorite Movies

**Objectives:**

* Practice using an API as a datasource to populate a file and access information stored in that file.

** Story **
A user should be able to see a list of their favorite movies
A user should be able to add new favorite movies
A user should be able to view information about a favorite single movie

** BONUS **
A user should be able to see a list of their favorite TV Series
A user should be able to add a new favorite TV Series
A user should be able to view information about a single favorite TV Series

**Activity:**

* Play with the code in `example.rb`
* Create a Sinatra application that fulfills the needs of the user story listed above
* The application should store information about the movies in a CSV file, and should not re-query the API for every viewing of a movie
* If the bonus requirements of TV Series are stored
* Create a static HTML page, which is linked to from the site. This page should be "about" and will tell about your favorite movies overall.
* Add a logo to your site as a static image stored in the /public directory
* Create a basic navigation in the layout.erb
* Create pages for each movie- showing title, year of release, director name, an image, and other metadata from IMDB
* No CSS or Javascript please