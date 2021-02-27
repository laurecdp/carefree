class CreateCodes < ActiveRecord::Migration[6.0]
  def change
    create_table :codes do |t|
      t.string :name
      t.string :code
      t.float :price
      t.string :category
      tf.text_area :diagnostic

      t.timestamps
    end
  end
end
