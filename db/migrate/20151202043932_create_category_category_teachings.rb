class CreateCategoryCategoryTeachings < ActiveRecord::Migration
  def change
    create_table :category_category_teachings do |t|

      t.timestamps null: false
    end
  end
end
