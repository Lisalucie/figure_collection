class AddTypeToFigures < ActiveRecord::Migration[6.1]
  def change
    add_column :figures, :type, :string
  end
end
