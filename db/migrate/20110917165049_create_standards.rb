class CreateStandards < ActiveRecord::Migration
  def self.up
    create_table :standards do |t|
      t.string :std_name
      t.text :std_des
      t.boolean :std_active
      t.timestamps
    end
  end

  def self.down
    drop_table :standards
  end
end
