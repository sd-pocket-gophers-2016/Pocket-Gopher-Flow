users = [
  {username: "Simba", email: "simba@lionking.com", password: "123"},
  {username: "Timon", email: "timon@lionking.com", password: "123"},
  {username: "Pumbaa", email:"pumbaa@lionking.com", password: "123"},
  {username: "Shiba Inu", email: "suchwow@gmail.com", password: "suchwow"},
  {username: "Taylor Twoteeth", email: "iamtaylor@twoteeth.com", password: "white" },
  {username: "Richie N.W.A. Yi", email: "richie@yi.com", password: "123"},
  {username: "Maeve", email: "maeve@dbc.com", password: "123"},
  {username: "Kevin", email: "kevin@dbc.com", password: "123"},
  {username: "Mike Doom", email: "mike@doom.com", password: "123"},
  {username: "Mark", email: "mark@dbc.com", password: "123"}
]

posts = [
  {title: "I just want to be king", content: "ROAR", user_id: 1},
  {title: "I feel no worries", content: "Hakuna Matata ", user_id: 2},
  {title: "Hungry", content: "Hakuna Matata. It means no worries", user_id: 3},
  {title: "Quality Post", content: "Such Wow", user_id: 4},
  {title: "Lunch time", content: "I'm boycotting Miguel's", user_id: 5},
  {title: "...", content: "Hakuna Matata?", user_id: 1},
  {title: "i <3 Thursdays~", content: "I find Nirvana when doing yoga with Gia", user_id: 6},
  {title: "word", content: "word", user_id: 7},
  {title: "alright pocket gophers", content: "let's get to it", user_id: 8},
  {title: "GET BIG", content: "I like to look at myself in the mirror making poses", user_id: 9},
  {title: "alright", content: "good deal", user_id: 9}
]


User.create!(users)
Post.create!(posts)
