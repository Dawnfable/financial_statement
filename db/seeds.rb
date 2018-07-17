User.create!(
  email: 'admin@test.com',
  first_name: 'Admin',
  last_name: 'Test',
  password: 'asdfasdf',
  password_confirmation: 'asdfasdf',
  roles:'admin')

puts 'Admin user created'

User.create!(
  email: 'test@test.com',
  first_name: 'Reg',
  last_name: 'User',
  password: 'asdfasdf',
  password_confirmation: 'asdfasdf',
  roles:'user')

puts 'Regular user created'