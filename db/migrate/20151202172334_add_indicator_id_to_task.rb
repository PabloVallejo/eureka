class AddIndicatorIdToTask < ActiveRecord::Migration
  def change
    add_column :tasks, :indicator_id, :integer
  end
end
