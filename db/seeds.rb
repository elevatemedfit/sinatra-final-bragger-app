User.create(username:"Chris", email:"Chris@email.com", password:"password")
User.create(username:"Steve", email:"Steve@email.com", password:"password")

Post.create(name:"Chris", user_id: 1, content: "I felt great out there today!", image_url: "https://www.helpguide.org/wp-content/uploads/2019/08/outdoor-fitness-woman-walking-dog-500.jpg", step_count: 3000, cardio_score: 85, caloric_burn: 300, walking_distance: 2)
Post.create(name:"Steves", user_id: 2, content: "Tough day today", image_url: "/Users/christopherjunker/sinatra-final-bragger-app/public/images/download.jpeg", step_count: 2000, cardio_score: 70, caloric_burn: 100, walking_distance: 1)

# post:
#     t.string   "name"
#     t.integer  "user_id"
#     t.text     "content"
#     t.string   "image_url"
#     t.integer  "step_count"
#     t.integer  "cardio_score"
#     t.integer  "caloric_burn"
#     t.integer  "walking_distance"