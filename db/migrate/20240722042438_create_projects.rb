class CreateProjects < ActiveRecord::Migration[7.1]
  def change
    create_table :projects, id: :uuid do |t|
      t.integer :priority, null: false, default: 0
      t.date :desired_completion_date
      t.integer :running_cost, null: false, default: 0
      t.belongs_to :house, null: false, foreign_key: true, type: :uuid
      t.integer :budget, null: false, default: 0
      t.date :estimated_completion_date

      t.timestamps
    end
  end
end
