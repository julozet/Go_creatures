class RemovePictureUrlFromCreatures < ActiveRecord::Migration[6.1]
  def change
    remove_column :creatures, :picture_url, :string
  end
end
