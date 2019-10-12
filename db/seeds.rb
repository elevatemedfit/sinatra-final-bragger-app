User.create(username:"Chris", email:"Chris@email.com", password:"password")
User.create(username:"Steve", email:"Steve@email.com", password:"password")
User.create(username:"Alice", email:"Alice@email.com", password:"password")
User.create(username:"Jane", email:"Jane@email.com", password:"password")
User.create(username:"Bob", email:"Bob@email.com", password:"password")

Post.create(name:"Chris", user_id: 1, content: "I felt great out there today!", image_url: "/images/download(1).jpeg", step_count: 3000, cardio_score: 30, caloric_burn: 100, walking_distance: 1)
Post.create(name:"Steve", user_id: 2, content: "Tough day today", image_url: "/Users/christopherjunker/sinatra-final-bragger-app/public/images/download.jpeg", step_count: 2000, cardio_score: 25, caloric_burn: 85, walking_distance: 1)
Post.create(name:"Alice", user_id: 3, content: "Very hot out today. Took it slow.", image_url: "/Users/christopherjunker/sinatra-final-bragger-app/public/images/download.jpeg", step_count: 10000, cardio_score: 80, caloric_burn: 300, walking_distance: 3)
Post.create(name:"Jane", user_id: 4, content: "Met Alice today. Had a great walk.", image_url: "/Users/christopherjunker/sinatra-final-bragger-app/public/images/download.jpeg", step_count: 6000, cardio_score: 60, caloric_burn: 230, walking_distance: 2)
Post.create(name:"Bob", user_id: 5, content: "Felt good.", image_url: "/Users/christopherjunker/sinatra-final-bragger-app/public/images/download.jpeg", step_count: 4300, cardio_score: 50, caloric_burn: 100, walking_distance: 1)


# post:
#     t.string   "name"
#     t.integer  "user_id"
#     t.text     "content"
#     t.string   "image_url"
#     t.integer  "step_count"
#     t.integer  "cardio_score"
#     t.integer  "caloric_burn"
#     t.integer  "walking_distance"