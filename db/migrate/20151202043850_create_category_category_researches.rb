class CreateCategoryCategoryResearches < ActiveRecord::Migration
  def change
    create_table :category_category_researches do |t|

      t.timestamps null: false
    end
  end
end
