class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.string :name
      t.string :desc
      t.boolean :complete
      t.integer :catID

      t.timestamps
    end
  end
end
