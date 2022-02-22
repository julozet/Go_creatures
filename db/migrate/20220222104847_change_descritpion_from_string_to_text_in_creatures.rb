class ChangeDescritpionFromStringToTextInCreatures < ActiveRecord::Migration[6.1]
  def change
    change_column :creatures, :description, :text
  end
end
