class Boards < ActiveRecord::Migration[6.1]
  def change
    create_table Boards do |t|
      t.string :name
      t.integer :projects_id 
      t.timestamps
    end
  end
end
