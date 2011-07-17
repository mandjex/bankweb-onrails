class CreateClients < ActiveRecord::Migration
  def self.up
    create_table :clients do |t|
      t.integer :account_number
      t.string  :first_name,      :null => false, :limit => 50
      t.string  :last_name,       :null => false, :limit => 50
      t.string  :gender,          :null => false, :limit => 2
      t.string  :street_number,   :null => false, :limit => 4
      t.string  :street_name,     :null => false, :limit => 50
      t.integer :postal_code,     :null => false, :limit => 4
      t.string  :city,            :null => false, :limit => 50

      t.timestamps
    end
  end

  def self.down
    drop_table :clients
  end
end
