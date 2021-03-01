class CreatePatients < ActiveRecord::Migration[6.0]
  def change
    create_table :patients do |t|
      t.string :first_name
      t.string :last_name
      t.integer :age
      t.date :birth_date
      t.string :nss
      t.string :blood_group
      t.integer :number_of_weeks
      t.boolean :pregnant, default: true

      t.timestamps
    end
  end
end
