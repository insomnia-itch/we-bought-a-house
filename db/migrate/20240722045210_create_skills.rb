class CreateSkills < ActiveRecord::Migration[7.1]
  def change
    create_table :skills, id: :uuid do |t|
      t.string :name, null: false, default: ""

      t.timestamps
    end
  end
end
