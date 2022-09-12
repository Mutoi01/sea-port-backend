class AddShipsIdToDocks < ActiveRecord::Migration[6.1]
  def change
      add_column :docks, :ship_id, :integer
    end
end
