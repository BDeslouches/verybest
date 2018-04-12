class CreateBestFoods < ActiveRecord::Migration
  def change
    create_table :best_foods do |t|
      t.integer :dish_id
      t.integer :venue_id
      t.boolean :isbest

      t.timestamps

    end
  end
end
