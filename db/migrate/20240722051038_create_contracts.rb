class CreateContracts < ActiveRecord::Migration[7.1]
  def change
    create_table :contracts, id: :uuid do |t|
      t.belongs_to :contractor, null: false, foreign_key: true, type: :uuid
      t.belongs_to :project, null: false, foreign_key: true, type: :uuid
      t.integer :time_estimate, null: false, default: 0
      t.integer :price_estimate, null: false, default: 0
      t.integer :running_cost, null: false, default: 0
      t.boolean :accepted, null: false, default: false

      t.timestamps
    end
  end
end
