class AddLabourDateToActions < ActiveRecord::Migration[6.0]
  def change
    add_column :actions, :labourdate, :string
  end
end
