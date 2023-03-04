class Boards < ActiveRecord::Migration[6.1]
  def change
    create_table Boards do |t|
      t.integer :projects_id
      t.integer :tasks_id
      t.string :name
      t.timestamps
    end
  end
end
