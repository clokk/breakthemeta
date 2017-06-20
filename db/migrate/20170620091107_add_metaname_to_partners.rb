class AddMetanameToPartners < ActiveRecord::Migration[5.0]
  def change
    add_column :partners, :metaname, :string
  end
end
