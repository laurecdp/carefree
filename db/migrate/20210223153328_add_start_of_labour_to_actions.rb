class AddStartOfLabourToActions < ActiveRecord::Migration[6.0]
  def change
    add_column :actions, :startoflabour, :string
  end
end
