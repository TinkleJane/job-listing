# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "这个种子档会自动建立一个admin账号，并且创建10个public jobs， 以及10个hidden jobs"
create_account=User.create([email: 'admin@gmail.com', password:'111111', password_confirmation: '111111', is_admin: 'true'])
puts "Admin account created."

create_jobs = for i in 1..10 do
  Job.create!([title: "Job no.#{i}", description: "这是用种子建立的第 #{i} 个Public工作", wage_upper_bound: rand(50..90)*100, wage_lower_bound: rand(10..49)*100, is_hidden: "false", user_id: 1])
end
puts "10 Public jobs created."

create_jobs = for i in 1..10 do
  Job.create!([title: "Job no.#{i+10}", description: "这是用种子建立的第 #{i+10} 个Hidden工作", wage_upper_bound: rand(50..90)*100, wage_lower_bound: rand(10..49)*100, is_hidden: "true", user_id: 1])
end
puts "10 Hidden jobs created."
