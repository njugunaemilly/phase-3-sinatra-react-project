class Tasks < ActiveRecord::Migration[6.1]
  def change
    create_table Tasks do |t|
      t.string :name
      t.string :description
      t.date :date_due
      t.integer :boards_id
      t.timestamps
    end
  end
end
