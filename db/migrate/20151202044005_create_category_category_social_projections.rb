class CreateCategoryCategorySocialProjections < ActiveRecord::Migration
  def change
    create_table :category_category_social_projections do |t|

      t.timestamps null: false
    end
  end
end
