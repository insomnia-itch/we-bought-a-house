class CreateContractors < ActiveRecord::Migration[7.1]
  def change
    create_table :contractors, id: :uuid do |t|
      t.string :name, null: false, default: ""
      t.string :phone_number, null: false, default: ""
      t.string :email, null: false, default: ""

      t.timestamps
    end
  end
end
