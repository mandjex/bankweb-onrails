class CreateClients < ActiveRecord::Migration
  def self.up
    create_table :clients do |t|
      t.string :first_name,      :null => false, :limit => 50
      t.string :last_name,       :null => false, :limit => 50
      t.string :gender
      t.string :street,          :null => false, :limit => 50
      t.integer :postal_code,    :null => false, :limit => 4
      t.string :city,            :null => false, :limit => 100
      t.decimal :account_number

      t.timestamps
    end
  end

  def self.down
    drop_table :clients
  end
end
