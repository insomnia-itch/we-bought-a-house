class CreateHouses < ActiveRecord::Migration[7.1]
  def change
    create_table :houses, id: :uuid do |t|
      t.string :name, null: false, default: ""
      t.string :address, null: false, default: ""
      t.belongs_to :lister, null: false, foreign_key: { to_table: :users}, type: :uuid

      t.timestamps
    end
  end
end
