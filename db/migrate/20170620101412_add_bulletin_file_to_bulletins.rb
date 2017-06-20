class AddBulletinFileToBulletins < ActiveRecord::Migration[5.0]
  def change
    add_column :bulletins, :bulletin_file, :text
  end
end
