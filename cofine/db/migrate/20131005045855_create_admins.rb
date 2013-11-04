class CreateAdmins < ActiveRecord::Migration
  def change
    create_table :admins do |t|
      t.string :nombre,				:null => false
      t.string :apellido_paterno,	:null => false
      t.string :apellido_materno,	:null => false
      t.integer :pMoral_id,			:null => false, :unique => true

      t.timestamps
    end
  end
end
