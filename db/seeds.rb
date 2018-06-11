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

User.create!(
    email: "scottsutrisno@gmail.com",
    username: "scottie",
    password: "123123",
    password_confirmation: "123123")