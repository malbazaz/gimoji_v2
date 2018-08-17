class AddFullnameToAdmins < ActiveRecord::Migration[5.2]
  def change
    add_column :admins, :fullname, :string
  end
end
