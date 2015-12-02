class DropCategoryBaseSemaphoreDefaultIndicatorBaseCategoryBase < ActiveRecord::Migration
  def change
    drop_table :semaphore_semaphore_bases
    drop_table :semaphore_semaphore_defaults
    drop_table :indicator_indicator_bases
    drop_table :category_category_bases
  end
end
