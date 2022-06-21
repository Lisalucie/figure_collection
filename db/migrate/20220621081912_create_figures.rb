class CreateFigures < ActiveRecord::Migration[6.1]
  def change
    create_table :figures do |t|
      t.string :name
      t.string :version
      t.string :manufacturer
      t.decimal :price
      t.integer :size

      t.timestamps
    end
  end
end
