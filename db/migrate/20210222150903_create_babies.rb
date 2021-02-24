class CreateBabies < ActiveRecord::Migration[6.0]
  def change
    create_table :babies do |t|
      t.string :first_name
      t.string :last_name
      t.datetime :birth_date
      t.boolean :alive, default: true
      t.string :diagnostic
      t.float :weight
      t.float :heigh
      t.float :head_circumference
      t.string :sex
      t.boolean :monitoring, default: false
      t.string :monitoring_options, array: true, default: []
      t.boolean :intensivecare, default: false
      t.string :intensivecare_options, array: true, default: []
      t.boolean :malformation, default: false
      t.boolean :infectiouscontext, default: false
      t.string :infectiouscontext_options, array: true, default: []
      t.string :exit_room
      t.string :breastfeeding
      t.string :pathologies, array: true, default: []
      t.references :patient, null: false, foreign_key: true

      t.timestamps
    end
  end
end
