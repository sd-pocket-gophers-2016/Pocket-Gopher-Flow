users = [
  {username: "Simba", email: "simba@lionking.com", password: "123"},
  {username: "Timon", email: "timon@lionking.com", password: "123"},
  {username: "Pumbaa", email:"pumbaa@lionking.com", password: "123"},
  {username: "Shiba Inu", email: "suchwow@gmail.com", password: "suchwow"},
  {username: "Taylor Twoteeth", email: "iamtaylor@twoteeth.com", password: "white" }
]

posts = [
  {title: "I just want to be king", content: "ROAR", user_id: 1},
  {title: "I feel no worries", content: "Hakuna Matata ", user_id: 2},
  {title: "Hungry", content: "Hakuna Matata. It means no worries", user_id: 3},
  {title: "Quality Post", content: "Such Wow", user_id: 4},
  {title: "Lunch time", content: "I'm boycotting Miguel's", user_id: 5},
  {title: "...", content: "Hakuna Matata?", user_id: 1}
]


User.create!(users)
Post.create!(posts)
