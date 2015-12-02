class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.string :title
      t.text :description
      t.integer :parent_id
      t.integer :asigned_to_id
      t.string :indicator_class
      t.string :semaphore_class
      t.string :category_class

      t.timestamps null: false
    end
  end
end
