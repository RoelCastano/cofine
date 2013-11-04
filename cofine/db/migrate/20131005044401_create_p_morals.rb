class CreatePMorals < ActiveRecord::Migration
  def change
    create_table :p_morals do |t|
      t.string :nombre,         :null => false, :limit => 125 
      t.string :actividad,      :null => false
      t.string :nacionalidad,   :null => false
      t.string :rfc,            :null => false, :limit => 13
      t.string :fiel
      t.integer :domicilio_id,  :null => false
      t.string :telefono,       :null => false, :limit => 40
      t.string :mail
      t.date :nacimiento,       :null => false
      t.integer :admins_id,     :null => false
      t.boolean :alta,          :null => false
      
      t.timestamps
    end
  end
end
