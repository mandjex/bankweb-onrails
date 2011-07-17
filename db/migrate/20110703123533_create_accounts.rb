class CreateAccounts < ActiveRecord::Migration
  def self.up
    create_table :accounts do |t|
      t.integer :number
      t.decimal :balance, :null => false, :precision => 10, :scale => 2, :default => 0

      t.timestamps
    end
  end

  def self.down
    drop_table :accounts
  end
end
