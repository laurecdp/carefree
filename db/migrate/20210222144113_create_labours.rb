class CreateLabours < ActiveRecord::Migration[6.0]
  def change
    create_table :labours do |t|
      t.datetime :labour_start_at
      t.string :labour_start, 
      t.string :labour_end, array: true, default: []
      t.datetime :labour_end_at,
      t.string :artificial_labour,
      t.string :anaesthesia_category, array: true, default: []
      t.string :anaesthesia_general, array: true, default: []
      t.string :anaesthesia_loco_general, array: true, default: []
      t.string :anaesthesia_moment, array: true, default: []
      t.string :labour_drugs, array: true, default: []
      t.string :labour_complication_type, array: true, default: []
      t.string :labour_actes, array: true, default: []
      t.boolean :anaesthesia_complication, default: false
      t.boolean :caesarean, default: false
      t.boolean :labour_complication, default: false
      t.boolean :labour_actes_done, default: false

      t.references :patient, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true
      t.references :category, null: false, foreign_key: true

      t.timestamps
    end
  end
end

