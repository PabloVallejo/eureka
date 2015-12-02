class CreateIndicatorIndicatorCompleteds < ActiveRecord::Migration
  def change
    create_table :indicator_indicator_completeds do |t|

      t.timestamps null: false
    end
  end
end
