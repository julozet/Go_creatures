class CreateCreatures < ActiveRecord::Migration[6.1]
  def change
    create_table :creatures do |t|
      t.string :name
      t.string :type
      t.string :description
      t.string :picture_url
      t.string :address
      t.integer :price
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
