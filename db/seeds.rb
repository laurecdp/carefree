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

nastasia = User.create(first_name: 'Nastasia', email: 'nastasia@gmail.com', password: '123456')

manon = User.create(first_name: 'Manon', email: 'manon@gmail.com', password: '123456')

laure = User.create(first_name: 'Laure', email: 'laure@gmail.com', password: '123456')

sami = User.create(first_name: 'Sami', email: 'sami@gmail.com', password: '123456')

annick = User.create(first_name: 'Annick', email: 'annick@hospital.com', password: '123456' )

puts "#{User.all.length} users created"

#---------------------------CSV parsing----------------------------#

puts 'Creating Codes'

csv_options = { col_sep: ';', quote_char: '"', headers: :first_row }
filepath = './db/labour_unicode.csv'

CSV.foreach(filepath, csv_options) do |row|

  code = Code.create!(

    name: row[3],
    code: row[0],
    price: row[4],
    diagnostic: " ",
    category: row[1]
  )
end

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

consultation = Category.create(name: 'Consultation')

hospitalisation = Category.create(name: 'Hospitalisation')

naissance = Category.create(name: 'Naissance')

ordonnance = Category.create(name: 'Ordonnance')

puts "#{Category.all.length} categories created"

#----------------------------#
puts 'Creating Actions'

naissance = Action.create(patient: patient1, user: annick, category: naissance, labour_start_at: 'Fevrier 12 16h', labour_end_at: 'Fevrier 12 22h', labour_start:  )


puts "#{Action.all.length} actions created"

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




