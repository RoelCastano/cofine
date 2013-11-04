class CreatePFisicas < ActiveRecord::Migration
  def change
    create_table :p_fisicas do |t|
      t.string :nombre,           :null => false, :limit => 60
      t.string :apellido_paterno, :null => false, :limit => 60
      t.string :apellido_materno, :null => false, :limit => 30
      t.string :genero,           :null => false, :limit => 1
      t.date :nacimiento,         :null => false
      t.string :estado,           :null => false
      t.string :pais,             :null => false
      t.integer :nacionalidad,    :null => false, :limit => 1
      t.string :ocupacion,        :null => false
      t.integer :domicilio_id,    :null => false
      t.string :telefono,         :null => false, :limit => 40
      t.string :mail
      t.string :curp,                             :limit => 18
      t.string :rfc,                              :limit => 13
      t.string :fiel
      t.boolean :alta,            :null => false

      t.timestamps
    end
  end
end
