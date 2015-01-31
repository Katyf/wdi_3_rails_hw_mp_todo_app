class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.string :name
      t.date :complete_by
      t.belongs_to :list, index: true

      t.timestamps null: false
    end
    add_foreign_key :tasks, :lists
  end
end
