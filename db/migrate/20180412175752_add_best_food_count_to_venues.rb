class AddBestFoodCountToVenues < ActiveRecord::Migration[5.0]
  def change
    add_column :venues, :best_foods_count, :integer
  end
end
