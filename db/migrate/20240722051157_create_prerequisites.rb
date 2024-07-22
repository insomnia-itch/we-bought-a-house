class CreatePrerequisites < ActiveRecord::Migration[7.1]
  def change
    create_table :prerequisites, id: :uuid do |t|
      t.belongs_to :required_project, null: false, foreign_key: { to_table: :projects }, type: :uuid
      t.belongs_to :locked_project, null: false, foreign_key: { to_table: :projects }, type: :uuid

      t.timestamps
    end
  end
end
