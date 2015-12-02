class CreateSemaphoreSemaphorePercentages < ActiveRecord::Migration
  def change
    create_table :semaphore_semaphore_percentages do |t|
      t.timestamps null: false
    end
  end
end
