class AddCreatedByToItem < ActiveRecord::Migration
  def change
    add_column :items, :created_by_id, :integer, null: false
  end
end
