# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
School.create(state: "Alabama", district: "Birmingham City Schools", title9_status: true)

Teacher.create(email: "andrew@andrew.com", first_name: "Andrew", last_initial: "P", homeroom_id: 1, type: "Teacher", password_digest: "asdfasdf")
Teacher.create(email: "tamimu@tamimu.com", first_name: "Zeinu", last_initial: "T", homeroom_id: 2, type: "Teacher", password_digest: "asdfasdf")

Homeroom.create(school_id: 1, teacher_id: 1, gradelevel: 9)
Homeroom.create(school_id: 1, teacher_id: 2, gradelevel: 10)

40.times do Student.create(email: Faker::Internet.email, first_name: Faker::Name.first_name, last_initial: "F", homeroom_id: (rand(2)+1), type: "Student", password_digest: Faker::Internet.password, num_boxtops: rand(10), amt_donated: rand(500))
end

1000.times do Boxtop.create(hidden_code: Faker::Lorem.characters(10))
end
