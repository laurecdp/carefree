class AddEndOfLabourToActions < ActiveRecord::Migration[6.0]
  def change
    add_column :actions, :endoflabour, :string
  end
end
