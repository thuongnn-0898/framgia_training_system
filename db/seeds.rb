15.times do |n|
  email = "thuong#{n+1}@fpt.edu.vn"
  password = "123123"
  role = 2
  fullname = Faker::Name.name
  birthday = "1999/04/13"
  gender = rand(2)
  avatar = "user.png"
  User.create!(email: email, password: password,role: role,fullname: fullname,
    birthday: birthday,gender: gender,avatar: avatar)
end
