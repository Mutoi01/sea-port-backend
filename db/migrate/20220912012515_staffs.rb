class Staffs < ActiveRecord::Migration[6.1]
  def change
    create_table :staffs do |t| 
      t.string :name
      t.integer :age
      t.string :gender
      t.string :occupation
    end
  end
end
