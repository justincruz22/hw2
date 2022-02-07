# In this assignment, you'll be using the domain model from hw1 (found in the hw1-solution.sql file)
# to create the database structure for "KMDB" (the Kellogg Movie Database).
# The end product will be a report that prints the movies and the top-billed
# cast for each movie in the database.

# To run this file, run the following command at your terminal prompt:
# `rails runner kmdb.rb`

# Requirements/assumptions
#
# - There will only be three movies in the database – the three films
#   that make up Christopher Nolan's Batman trilogy
# - Movie data includes the movie title, year released, MPAA rating,
#   and director
# - A movie has a single director
# - A person can be the director of and/or play a role in a movie
# - Everything you need to do in this assignment is marked with TODO!

# Rubric
# 
# There are three deliverables for this assignment, all delivered within
# this repository and submitted via GitHub and Canvas:
# - Generate the models and migration files to match the domain model from hw1.
#   Execute the migration files to create the tables in the database. Add the
#   relevant association methods in each model. (5 points)
# - Insert the "Batman" sample data using ruby code. Do not use hard-coded ids and
#   delete any existing data beforehand so that each run of this script does not
#   create duplicate data. (5 points)
# - Query the data and loop through it to display output similar to the following
#   sample "report". (10 points)

# Submission
# 
# - "Use this template" to create a brand-new "hw2" repository in your
#   personal GitHub account, e.g. https://github.com/<USERNAME>/hw2
# - Do the assignment, committing and syncing often
# - When done, commit and sync a final time, before submitting the GitHub
#   URL for the finished "hw2" repository as the "Website URL" for the 
#   Homework 2 assignment in Canvas

# Successful sample output is as shown:

# Movies
# ======

# Batman Begins          2005           PG-13  Christopher Nolan
# The Dark Knight        2008           PG-13  Christopher Nolan
# The Dark Knight Rises  2012           PG-13  Christopher Nolan

# Top Cast
# ========

# Batman Begins          Christian Bale        Bruce Wayne
# Batman Begins          Michael Caine         Alfred
# Batman Begins          Liam Neeson           Ra's Al Ghul
# Batman Begins          Katie Holmes          Rachel Dawes
# Batman Begins          Gary Oldman           Commissioner Gordon
# The Dark Knight        Christian Bale        Bruce Wayne
# The Dark Knight        Heath Ledger          Joker
# The Dark Knight        Aaron Eckhart         Harvey Dent
# The Dark Knight        Michael Caine         Alfred
# The Dark Knight        Maggie Gyllenhaal     Rachel Dawes
# The Dark Knight Rises  Christian Bale        Bruce Wayne
# The Dark Knight Rises  Gary Oldman           Commissioner Gordon
# The Dark Knight Rises  Tom Hardy             Bane
# The Dark Knight Rises  Joseph Gordon-Levitt  John Blake
# The Dark Knight Rises  Anne Hathaway         Selina Kyle

# Delete existing data, so you'll start fresh each time this script is run.
# Use `Model.destroy_all` code.
# TODO!
Movie.destroy_all
Person.destroy_all
Role.destroy_all

# Generate models and tables, according to the domain model
# TODO!

# rails generate model Movie
# add columns in the db file, then migrate using rails db:migrate
# repeat above for people and roles tables

# Insert data into your database that reflects the sample data shown above
# Do not use hard-coded foreign key IDs.
# TODO!

new_person1 = Person.new
new_person1.name = "Christopher Nolan"
new_person1.save

new_person2 = Person.new
new_person2.name = "Christian Bale"
new_person2.save

new_person3 = Person.new
new_person3.name = "Michael Caine"
new_person3.save

new_person4 = Person.new
new_person4.name = "Liam Neeson"
new_person4.save

new_person5 = Person.new
new_person5.name = "Katie Holmes"
new_person5.save

new_person6 = Person.new
new_person6.name = "Gary Oldman"
new_person6.save

new_person7 = Person.new
new_person7.name = "Heath Ledger"
new_person7.save

new_person8 = Person.new
new_person8.name = "Aaron Eckhart"
new_person8.save

new_person9 = Person.new
new_person9.name = "Maggie Gyllenhaal"
new_person9.save

new_person10 = Person.new
new_person10.name = "Tom Hardy"
new_person10.save

new_person11 = Person.new
new_person11.name = "Joseph Gordon-Levitt"
new_person11.save

new_person12 = Person.new
new_person12.name = "Anne Hathaway"
new_person12.save

new_movie1 = Movie.new
new_movie1.title = "Batman Begins"
new_movie1.year_released = "2005"
new_movie1.rated = "PG-13"
new_movie1.person_id = new_person1.id
new_movie1.save

new_movie2 = Movie.new
new_movie2.title = "The Dark Knight"
new_movie2.year_released = "2008"
new_movie2.rated = "PG-13"
new_movie2.person_id = new_person1.id
new_movie2.save

new_movie3 = Movie.new
new_movie3.title = "The Dark Knight Rises"
new_movie3.year_released = "2012"
new_movie3.rated = "PG-13"
new_movie3.person_id = new_person1.id
new_movie3.save

new_role1 = Role.new
new_role1.movie_id = new_movie1.id
new_role1.person_id = new_person2.id
new_role1.character_name = "Bruce Wayne"
new_role1.save

new_role2 = Role.new
new_role2.movie_id = new_movie1.id
new_role2.person_id = new_person3.id
new_role2.character_name = "Alfred"
new_role2.save

new_role3 = Role.new
new_role3.movie_id = new_movie1.id
new_role3.person_id = new_person4.id
new_role3.character_name = "Ra's Al Ghul"
new_role3.save

new_role4 = Role.new
new_role4.movie_id = new_movie1.id
new_role4.person_id = new_person5.id
new_role4.character_name = "Rachel Dawes"
new_role4.save

new_role5 = Role.new
new_role5.movie_id = new_movie1.id
new_role5.person_id = new_person6.id
new_role5.character_name = "Commissioner Gordon"
new_role5.save

new_role6 = Role.new
new_role6.movie_id = new_movie2.id
new_role6.person_id = new_person2.id
new_role6.character_name = "Bruce Wayne"
new_role6.save

new_role7 = Role.new
new_role7.movie_id = new_movie2.id
new_role7.person_id = new_person7.id
new_role7.character_name = "Joker"
new_role7.save

new_role8 = Role.new
new_role8.movie_id = new_movie2.id
new_role8.person_id = new_person8.id
new_role8.character_name = "Harvey Dent"
new_role8.save

new_role9 = Role.new
new_role9.movie_id = new_movie2.id
new_role9.person_id = new_person3.id
new_role9.character_name = "Alfred"
new_role9.save

new_role10 = Role.new
new_role10.movie_id = new_movie2.id
new_role10.person_id = new_person9.id
new_role10.character_name = "Rachel Dawes"
new_role10.save

new_role11 = Role.new
new_role11.movie_id = new_movie3.id
new_role11.person_id = new_person2.id
new_role11.character_name = "Bruce Wayne"
new_role11.save

new_role12 = Role.new
new_role12.movie_id = new_movie3.id
new_role12.person_id = new_person6.id
new_role12.character_name = "Commissioner Gordon"
new_role12.save

new_role13 = Role.new
new_role13.movie_id = new_movie3.id
new_role13.person_id = new_person10.id
new_role13.character_name = "Bane"
new_role13.save

new_role14 = Role.new
new_role14.movie_id = new_movie3.id
new_role14.person_id = new_person11.id
new_role14.character_name = "John Blake"
new_role14.save

new_role15 = Role.new
new_role15.movie_id = new_movie3.id
new_role15.person_id = new_person12.id
new_role15.character_name = "Selina Kyle"
new_role15.save

# Prints a header for the movies output
puts "Movies"
puts "======"
puts ""

# Query the movies data and loop through the results to display the movies output
# TODO!
# .all is a "method" - whenever you call a method, use the singular

movies = Movie.all

for movie in movies
    movie_person = Person.where({id: movie.person_id})[0]
    puts "#{movie.title} #{movie.year_released} #{movie.rated} #{movie_person.name}"
end

# Prints a header for the cast output
puts ""
puts "Top Cast"
puts "========"
puts ""

# Query the cast data and loop through the results to display the cast output for each movie
# TODO!

roles = Role.all

for role in roles
    role_person = Person.where({id: role.person_id})[0]
    movie_role = Movie.where({id: role.movie_id})[0]
    puts "#{movie_role.title} #{role_person.name} #{role.character_name}"
end