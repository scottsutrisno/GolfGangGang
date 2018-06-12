User.create!(
    email: "scottsutrisno@gmail.com",
    username: "scottie",
    password: "123123",
    password_confirmation: "123123"
    role: '2')

User.create!(
    email: "group@leader.com",
    username: "GroupAdmin",
    password: "123123",
    password_confirmation: "123123"
    role: '1')




20.times do |n|
    email =  "example-#{n+1}@example.com"
    username = "example-#{n+1}"
    password = "password"
    User.create!(
        email: email,
        username: username,
        password: password,
        password_confirmation: password)

end

