class Tasks < ActiveRecord::Migration[6.1]
  def change
    create_table Tasks do |t|
      t.string :name
      t.string :description
      t.boolean :completed
      t.date :date_due
      t.integer :board_id
      t.timestamps
    end
  end
end
