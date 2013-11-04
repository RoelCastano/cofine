class CreateUsuarios < ActiveRecord::Migration
  def change
    create_table :usuarios do |t|
      t.string :mail,				        :null => false, :unique => true
      t.string :nombre,				      :null => false
      t.string :apellido_paterno,	  :null => false
      t.string :apellido_materno,	  :null => false
      t.boolean :activo,			      :null => false

      t.timestamps
    end
  end
end