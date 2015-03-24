class FixColumnName < ActiveRecord::Migration
  def change
  	rename_column :Tasks, :catID, :cat_id
  end
end
