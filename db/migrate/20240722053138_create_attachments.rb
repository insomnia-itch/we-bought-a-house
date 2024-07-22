class CreateAttachments < ActiveRecord::Migration[7.1]
  def change
    create_table :attachments, id: :uuid do |t|
      t.string :file_extension, null: false, default: ""
      t.string :url, null: false, default: ""
      t.belongs_to :uploader, null: false, foreign_key: {to_table: :users}, type: :uuid
      t.references :attachable, polymorphic: true, null: false, type: :uuid

      t.timestamps
    end
  end
end
