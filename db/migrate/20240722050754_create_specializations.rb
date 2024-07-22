class CreateSpecializations < ActiveRecord::Migration[7.1]
  def change
    create_table :specializations, id: :uuid do |t|
      t.belongs_to :contractor, null: false, foreign_key: true, type: :uuid
      t.belongs_to :skill, null: false, foreign_key: true, type: :uuid

      t.timestamps
    end
  end
end
