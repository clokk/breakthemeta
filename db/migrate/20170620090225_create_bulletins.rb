class CreateBulletins < ActiveRecord::Migration[5.0]
  def change
    create_table :bulletins do |t|
      t.string :name
      t.text :description
      t.references :partner, foreign_key: true

      t.timestamps
    end
  end
end
