class CreateLinks < ActiveRecord::Migration
   def self.up
    create_table :links do |t|
      t.integer :folder_id
      t.string :name
      t.timestamps
    end
  end

  def self.down
    drop_table :links
  end
end
