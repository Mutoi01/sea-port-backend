class Ships < ActiveRecord::Migration[6.1]
  def change
    create_table :staffs do |t| 
      t.string :vessel
      t.integer :built
      t.integer :gt
      t.integer :size
    end
  end
end
