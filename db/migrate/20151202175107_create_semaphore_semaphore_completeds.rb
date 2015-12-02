class CreateSemaphoreSemaphoreCompleteds < ActiveRecord::Migration
  def change
    create_table :semaphore_semaphore_completeds do |t|

      t.timestamps null: false
    end
  end
end
