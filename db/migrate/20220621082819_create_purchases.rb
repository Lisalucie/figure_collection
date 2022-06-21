class CreatePurchases < ActiveRecord::Migration[6.1]
  def change
    create_table :purchases do |t|
      t.string :status
      t.decimal :total_price
      t.references :user, null: false, foreign_key: true
      t.references :figure, null: false, foreign_key: true

      t.timestamps
    end
  end
end
