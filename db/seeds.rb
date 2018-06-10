User.create!(
  email: 'admin@test.com',
  password: 'asdfasdf',
  password_confirmation: 'asdfasdf',
  roles:'admin')

puts 'Admin user created'

User.create!(
  email: 'test@test.com',
  password: 'asdfasdf',
  password_confirmation: 'asdfasdf',
  roles:'user')

puts 'Regular user created'