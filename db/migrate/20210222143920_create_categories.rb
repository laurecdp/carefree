class CreateCategories < ActiveRecord::Migration[6.0]
  def change
    create_table :categories do |t|
      t.string :name, array: true, default: []

      t.timestamps
    end
  end
end
