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

movie1 = Movie.new
movie1.title = "Batman Begins"
movie1.year_released = "2005"
movie1.rated = "PG-13"
movie1.person_id = "1"
movie1.save

movie2 = Movie.new
movie2.title = "The Dark Knight"
movie2.year_released = "2008"
movie2.rated = "PG-13"
movie2.person_id = "1"
movie2.save

movie3 = Movie.new
movie3.title = "The Dark Knight Rises"
movie3.year_released = "2012"
movie3.rated = "PG-13"
movie3.person_id = "1"
movie3.save

person1 = Person.new
person1.name = "Christopher Nolan"
person1.save

person2 = Person.new
person2.name = "Christian Bale"
person2.save

person3 = Person.new
person3.name = "Michael Caine"
person3.save

person4 = Person.new
person4.name = "Liam Neeson"
person4.save

person5 = Person.new
person5.name = "Katie Holmes"
person5.save

person6 = Person.new
person6.name = "Gary Oldman"
person6.save

person7 = Person.new
person7.name = "Heath Ledger"
person7.save

person8 = Person.new
person8.name = "Aaron Eckhart"
person8.save

person9 = Person.new
person9.name = "Maggie Gyllenhaal"
person9.save

person10 = Person.new
person10.name = "Tom Hardy"
person10.save

person11 = Person.new
person11.name = "Joseph Gordon-Levitt"
person11.save

person12 = Person.new
person12.name = "Anne Hathaway"
person12.save

role1 = Role.new
role1.movie_id = "1"
role1.person_id = "2"
role1.character_name = "Bruce Wayne"
role1.save

role2 = Role.new
role2.movie_id = "1"
role2.person_id = "3"
role2.character_name = "Alfred"
role2.save

role3 = Role.new
role3.movie_id = "1"
role3.person_id = "4"
role3.character_name = "Ra's Al Ghul"
role3.save

role4 = Role.new
role4.movie_id = "1"
role4.person_id = "5"
role4.character_name = "Rachel Dawes"
role4.save

role5 = Role.new
role5.movie_id = "1"
role5.person_id = "6"
role5.character_name = "Commissioner Gordon"
role5.save

role6 = Role.new
role6.movie_id = "2"
role6.person_id = "2"
role6.character_name = "Bruce Wayne"
role6.save

role7 = Role.new
role7.movie_id = "2"
role7.person_id = "7"
role7.character_name = "Joker"
role7.save

role8 = Role.new
role8.movie_id = "2"
role8.person_id = "8"
role8.character_name = "Harvey Dent"
role8.save

role9 = Role.new
role9.movie_id = "2"
role9.person_id = "3"
role9.character_name = "Alfred"
role9.save

role10 = Role.new
role10.movie_id = "2"
role10.person_id = "9"
role10.character_name = "Rachel Dawes"
role10.save

role11 = Role.new
role11.movie_id = "3"
role11.person_id = "2"
role11.character_name = "Bruce Wayne"
role11.save

role12 = Role.new
role12.movie_id = "3"
role12.person_id = "6"
role12.character_name = "Commissioner Gordon"
role12.save

role13 = Role.new
role13.movie_id = "3"
role13.person_id = "10"
role13.character_name = "Bane"
role13.save

role14 = Role.new
role14.movie_id = "3"
role14.person_id = "11"
role14.character_name = "John Blake"
role14.save

role15 = Role.new
role15.movie_id = "3"
role15.person_id = "12"
role15.character_name = "Selina Kyle"
role15.save

# Prints a header for the movies output
puts "Movies"
puts "======"
puts ""

# Query the movies data and loop through the results to display the movies output
# TODO!

for movie in movies
    puts "#{title} #{year_released} #{rated} #{person_id}"
end

# Prints a header for the cast output
puts ""
puts "Top Cast"
puts "========"
puts ""

# Query the cast data and loop through the results to display the cast output for each movie
# TODO!
