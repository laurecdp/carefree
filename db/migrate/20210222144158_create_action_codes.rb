class CreateActionCodes < ActiveRecord::Migration[6.0]
  def change
    create_table :action_codes do |t|
      t.references :action, null: false, foreign_key: true
      t.references :code, null: false, foreign_key: true

      t.timestamps
    end
  end
end
