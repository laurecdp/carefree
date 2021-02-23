class AddDrugsLabourToActions < ActiveRecord::Migration[6.0]
  def change
    add_column :actions, :drugslabour, :string
  end
end
