class AddPasswordToUsuario < ActiveRecord::Migration
  def up
  	add_column(:usuarios, :password_digest, :string)
  end

  def down
  	remove_column(:usuarios, :password_digest)
  end
end
