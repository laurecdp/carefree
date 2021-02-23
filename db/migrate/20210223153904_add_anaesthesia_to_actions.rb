class AddAnaesthesiaToActions < ActiveRecord::Migration[6.0]
  def change
    add_column :actions, :anaesthesia, :string
  end
end
