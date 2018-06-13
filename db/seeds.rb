User.create!(
    email: "scottsutrisno@gmail.com",
    username: "scottie",
    password: "123123",
    password_confirmation: "123123",
    first_name: "Scott",
    last_name: "Sutrisno",
    role: "admin")

User.create!(
    email: "group@leader.com",
    username: "GroupAdmin",
    password: "123123",
    password_confirmation: "123123",
    first_name: "Group",
    last_name: "Leader",
    role: "group_leader")




18.times do |n|
    email =  "example-#{n+1}@example.com"
    username = "example-#{n+1}"
    password = "password"
    User.create!(
        email: email,
        username: username,
        password: password,
        password_confirmation: password,
        first_name: "example",
        last_name: "example")

end

