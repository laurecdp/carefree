class CreateBabies < ActiveRecord::Migration[6.0]
  def change
    create_table :babies do |t|
      t.string :first_name
      t.string :last_name
      t.date :birth_date
      t.boolean :alive, default: true
      t.text :description
      t.references :patient, null: false, foreign_key: true

      t.timestamps
    end
  end
end
