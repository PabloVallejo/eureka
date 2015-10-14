class CreateItemAttachments < ActiveRecord::Migration
  def change
    create_table :item_attachments do |t|
      t.integer :item_id, null: false
      t.integer :created_by_id, null: false
      t.string :file

      t.timestamps null: false
    end
  end
end
