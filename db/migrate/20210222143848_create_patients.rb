class CreatePatients < ActiveRecord::Migration[6.0]
  def change
    create_table :patients do |t|
      t.string :first_name
      t.string :last_name
      t.integer :age
      t.date :birth_date
      t.string :nss
      t.text :description
      t.integer :number_of_weeks

      t.timestamps
    end
  end
end
