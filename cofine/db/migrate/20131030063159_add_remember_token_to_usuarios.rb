class AddRememberTokenToUsuarios < ActiveRecord::Migration
  def up
  	add_column(:usuarios, :remember_token, :string)
  end

  def down
  	remove_column(:usuarios, :remember_token)
  end
end
