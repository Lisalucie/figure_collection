class ChangeColumnName < ActiveRecord::Migration[6.1]
  def change
    rename_column :figures, :type, :category 
  end
end
