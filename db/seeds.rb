require 'json'
require 'faker'


Labour.destroy_all
puts 'Destroying labours'

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

nastasia = User.create!(first_name: 'Nastasia', email: 'nastasia@gmail.com', password: '123456')

manon = User.create!(first_name: 'Manon', email: 'manon@gmail.com', password: '123456')

laure = User.create!(first_name: 'Laure', email: 'laure@gmail.com', password: '123456')

sami = User.create!(first_name: 'Sami', email: 'sami@gmail.com', password: '123456')

annick = User.create!(first_name: 'Annick', email: 'annick@hospital.com', password: '123456' )

puts "#{User.all.length} users created"

#---------------------------JSON parsing----------------------------#

puts 'Creating Codes'

filepath = './db/labour_unicode.json'
serialized_codes = File.read(filepath)
codes = JSON.parse(serialized_codes)

codes.each do |code|
  new_code = Code.create!(
    name: code["libelle"],
    code: code["acte"],
    price: code["tarif_secteur_1_adherent_optam_optam_co"],
    category: code["category"]
    )
end

puts "#{Code.all.length} codes created"

#----------------------------#

puts 'Creating Patients'

20.times do 
  patient = Patient.create!(
    first_name: Faker::Name.female_first_name,
    last_name: Faker::Name.last_name, 
    age: rand(16..50), 
    blood_group: Faker::Blood.group,
    birth_date: Faker::Date.between(from: '1970-01-01', to: '2004-12-31'), 
    nss:Faker::NationalHealthService.british_number, 
    number_of_weeks: rand(3..39)
  )
end

meghan = Patient.create!(first_name: 'Meghan', last_name: 'Markle', age: '35', birth_date: '23 Février 2021', nss:'269054958815787', number_of_weeks: 39)

kate = Patient.create!(first_name: 'Kate', last_name: 'Middleton', age: '38', birth_date: '1 Mars 2021', nss:'269055968916790', number_of_weeks: 35)

puts "#{Patient.all.length} patients created"

#----------------------------#

puts 'Creating Categories'

admission = Category.create(name: 'Admission')

consultation = Category.create(name: 'Consultation')

hospitalisation = Category.create(name: 'Hospitalisation')

naissance = Category.create(name: 'Naissance')

ordonnance = Category.create(name: 'Ordonnance')

puts "#{Category.all.length} categories created"

#----------------------------#
#puts 'Creating Labours'


# naissance = Labour.create!(patient: meghan, user: annick, category: naissance, labour_start_at: 'Fevrier 12 16h', labour_end_at: 'Fevrier 12 22h' )
# puts "#{Labour.all.length} labours created"


# puts 'done seeding'
