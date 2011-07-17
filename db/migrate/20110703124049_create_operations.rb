class CreateOperations < ActiveRecord::Migration
  def self.up
    create_table :operations do |t|
      t.integer :account_number
      t.decimal :value,         :null => false,   :precision => 10, :scale => 2
      t.decimal :old_balance,   :null => false, :precision => 10, :scale => 2
      t.decimal :new_balance,   :null => false, :precision => 10, :scale => 2
      t.string :ope_type,       :null => false, :limit => 1
      t.datetime :ope_date

      t.timestamps
    end
  end

  def self.down
    drop_table :operations
  end
end
