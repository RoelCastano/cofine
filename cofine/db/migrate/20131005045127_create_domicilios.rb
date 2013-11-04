class CreateDomicilios < ActiveRecord::Migration
  def change
    create_table :domicilios do |t|
      t.string :calle,          :null => false
      t.string :num_int,        :null => false
      t.string :num_ext,        :null => false
      t.integer :codigo_postal, :null => false
      t.string :colonia,        :null => false, :limit => 30
      t.string :ciudad,         :null => false, :limit => 8
      
      t.timestamps
    end
  end
end