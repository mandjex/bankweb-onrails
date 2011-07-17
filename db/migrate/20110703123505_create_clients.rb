class CreateClients < ActiveRecord::Migration
  def self.up
    create_table :clients do |t|
      t.boolean :gender
      t.string :firstname,  :null => false, :limit => 50
      t.string :lastname,   :null => false, :limit => 50
      t.string :address,    :null => false, :limit => 100
      t.integer :account_number

      t.timestamps
    end
  end

  def self.down
    drop_table :clients
  end
end
