class CreateLabourCodes < ActiveRecord::Migration[6.0]
  def change
    create_table :labour_codes do |t|
      t.text :diagnostic
      t.references :labour, null: false, foreign_key: true
      t.references :code, null: false, foreign_key: true

      t.timestamps
    end
  end
end
