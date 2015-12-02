class CreateIndicatorIndicatorPercentages < ActiveRecord::Migration
  def change
    create_table :indicator_indicator_percentages do |t|
      t.string :name, null: false, default: ''
      t.integer :percentage, null: false, default: 0
      t.timestamps null: false
    end
  end
end
