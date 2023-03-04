class Projects < ActiveRecord::Migration[6.1]
  def change
    create_table Projects do |t|
      t.string :name
      t.timestamps
    end
  end
end
