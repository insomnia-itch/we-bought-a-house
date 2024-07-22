class CreateNotes < ActiveRecord::Migration[7.1]
  def change
    create_table :notes, id: :uuid do |t|
      t.references :notable, polymorphic: true, null: false, type: :uuid
      t.text :body
      t.belongs_to :author, null: false, foreign_key: { to_table: :users }, type: :uuid

      t.timestamps
    end
  end
end
