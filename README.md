# The Bragger Application 
The Bragger web application provides a social forum for individuals in a medically-based fitness program. To improve program outcomes and patient participation, this site is meant to allow individuals to post their progress, ask questions, or establish fitness meet-ups outside of the clinical setting. Individuals can post daily data from prescribed fitness trackers, comment on their progress, and upload a photogragh when creating their posts. 

The application is meant to enhance participant performance through social interaction.

# Program Usage:
Clone the repository and `bundle` to install the required gems. Run `rake db:migrate` and then `rake db:seed` to load stored users and posts to the database. Run `shotgun` to preview Bragger and add your own information.

# Technical Considerations:
The Bragger application is a Sinatra - based  web application that allows users to sign-up, login in, create posts, update posts, and modify their own posts given user authentication. Classes for users, posts, and sessions, all inherit functional methods from ApplicationController allowing for data manipulation and presentation. Models, views, and controllers all work to provide a smooth user interface.

By filling out the required input requests at login/signup, individuals can tour the application and easily input their own data.
