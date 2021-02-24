# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'csv'

Action.destroy_all
puts 'Destroying actions'

Code.destroy_all
puts 'Destroying codes'

Patient.destroy_all
puts 'Destroying patients'

User.destroy_all
puts 'Destroying users'

Category.destroy_all
puts 'Destroying categories'

#----------------------------#

puts 'Creating Users'

user1 = User.new(email: 'nastasia@gmail.com', password: '123456')
user1.save!
user2 = User.new(email: 'manon@gmail.com', password: '123456')
user2.save!
user3 = User.new(email: 'laure@gmail.com', password: '123456')
user3.save!
user4 = User.new(email: 'sami@gmail.com', password: '123456')
user4.save!
puts "#{User.all.length} users created"

#---------------------------CSV parsing----------------------------#

csv_options = { col_sep: ';', quote_char: '"', headers: :first_row }
filepath    = './db/open-ccam0.csv'

CSV.foreach(filepath, csv_options) do |row|
  code = Code.new(
    name: row[7],
    code: row[11],
    price: row[12],
    description: " ",
  )
end

#----------------------------#

puts 'Creating Patients'

patient1 = Patient.new(first_name: 'Meghan', last_name: 'Markle', age: '35', birth_date: '23 Février 2021', nss:'269054958815787', description: '', number_of_weeks: '9 month')
patient2 = Patient.new(first_name: 'Kate', last_name: 'Middleton', age: '38', birth_date: '1 Mars 2021', nss:'269055968916790', description: '', number_of_weeks: '8 month')
patient1.save!
patient2.save!


puts "#{Patient.all.length} patients created"

puts 'done seeding'

#----------------------------#

puts 'Creating Categories'

category1 = Category.new(name: 'Admission')
category1.save!
category2 = Category.new(name: 'Consultation')
category2.save!
category3 = Category.new(name: 'Hospitalisation')
category3.save!
category4 = Category.new(name: 'Naissance')
category4.save!
category5 = Category.new(name: 'Ordonnance')
category5.save!

puts "#{Category.all.length} categories created"

#----------------------------#

puts 'Creating Actions'

action1 = Action.new(patient: patient1, user: user1, category: category4)
action1.save!
action2 = Action.new(patient: patient1, user: user3, category: category1)
action2.save!
action3 = Action.new(patient: patient1, user: user2, category_id: category2)
action3.save!

puts "#{Action.all.length} actions created"




