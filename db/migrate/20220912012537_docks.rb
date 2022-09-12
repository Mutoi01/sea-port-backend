class Docks < ActiveRecord::Migration[6.1]
  def change
    create_table :docks do |t| 
      t.string :status
      t.string :cargo
    end
  end
end
