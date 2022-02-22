class ChangeColumnNameFromTypeToKindOnCreature < ActiveRecord::Migration[6.1]
  def change
    rename_column :creatures, :type, :kind
  end
end
