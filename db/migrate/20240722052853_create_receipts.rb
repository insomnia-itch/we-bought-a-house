class CreateReceipts < ActiveRecord::Migration[7.1]
  def change
    create_table :receipts, id: :uuid do |t|
      t.belongs_to :project, null: false, foreign_key: true, type: :uuid
      t.integer :price, null: false, default: 0
      t.belongs_to :contractor, null: false, foreign_key: true, type: :uuid
      t.string :type_of_cost

      t.timestamps
    end
  end
end
