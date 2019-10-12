# The Bragger Application 
is a site where individuals participating in a medically-based fitness program, that utilizes fitness trackers as part of their clinical intervention, can post their daily results for others to see. The application allows individuals to input a picture along with their tracker data. 

The application is meant to enhance participant performance through social interaction.

# Program Usage:
Clone the repository and `bundle` to install the required gems. Run `rake db:migrate` and then `rake db:seed` to load stored users and posts to the database. Run `shotgun` to preview Bragger and add your own information.

# Technical Considerations:
The Bragger application is a "light" web application that uses the Sinatra gem methods to allow users to sign-up, login in, create posts, update posts, and modify their own posts given user validation. Classes for users, posts, and sessions all inherit functional methods from ApplicationController to allow for data manipulation. Models, views, and controllers all work to provide a smooth user interface.

By filling out the required input requests at login/signup, individuals can tour the application and easily input their own data.
