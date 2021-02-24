# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'csv'

Category.destroy_all
puts 'Destroying categories'

=begin 
Action.destroy_all
puts 'Destroying actions' 
=end

Code.destroy_all
puts 'Destroying codes'

Patient.destroy_all
puts 'Destroying patients'

User.destroy_all
puts 'Destroying users'

#----------------------------#

puts 'Creating Users'

nastasia = User.create(first_name: 'Nastasia', email: 'nastasia@gmail.com', password: '123456')

manon = User.create(first_name: 'Manon', email: 'manon@gmail.com', password: '123456')

laure = User.create(first_name: 'Laure', email: 'laure@gmail.com', password: '123456')

sami = User.create(first_name: 'Sami', email: 'sami@gmail.com', password: '123456')

annick = User.create(first_name: 'Annick', email: 'annick@hospital.com', password: '123456' )

puts "#{User.all.length} users created"

#---------------------------CSV parsing----------------------------#

puts 'Creating Codes'

csv_options = { col_sep: ';', quote_char: '"', headers: :first_row }
filepath    = './db/open-ccam0.csv'

CSV.foreach(filepath, csv_options) do |row|
  code = Code.create(
    name: row[3],
    code: row[0],
    price: row[4],
    diagnostic: " ",
    category: ""
  )
end

puts Code.first

puts "#{Code.all.length} codes created"

#----------------------------#

puts 'Creating Patients'

patient1 = Patient.new(first_name: 'Meghan', last_name: 'Markle', age: '35', birth_date: '23 Février 2021', nss:'269054958815787', description: '', number_of_weeks: '39')
patient1.save!

patient2 = Patient.new(first_name: 'Kate', last_name: 'Middleton', age: '38', birth_date: '1 Mars 2021', nss:'269055968916790', description: '', number_of_weeks: '35')
patient2.save!

puts "#{Patient.all.length} patients created"

#----------------------------#

puts 'Creating Categories'

admission = Category.create(name: 'Admission')
puts admission

consultation = Category.create(name: 'Consultation')

hospitalisation = Category.create(name: 'Hospitalisation')

naissance = Category.create(name: 'Naissance')

ordonnance = Category.create(name: 'Ordonnance')

puts "#{Category.all.length} categories created"

#----------------------------#
puts 'Creating Actions'

naissance = Action.create(patient: patient1, user: annick, category: naissance)

accouchement = Action.create(patient: patient1, user: nastasia, category: naissance)

césarienne = Action.create(patient: patient2, user: sami, category_id: naissance)

puts "#{Action.all.length} actions created"

puts 'done seeding'
