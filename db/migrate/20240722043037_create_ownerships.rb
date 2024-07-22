class CreateOwnerships < ActiveRecord::Migration[7.1]
  def change
    create_table :ownerships, id: :uuid do |t|
      t.belongs_to :owner, null: false, foreign_key: {to_table: :users}, type: :uuid
      t.belongs_to :house, null: false, foreign_key: true, type: :uuid

      t.timestamps
    end
  end
end
