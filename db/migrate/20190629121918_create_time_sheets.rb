class CreateTimeSheets < ActiveRecord::Migration[5.2]
  def change
    create_table :time_sheets do |t|
      t.integer :project_id
      t.time :time
      t.text :description

      t.timestamps
    end
  end
end
