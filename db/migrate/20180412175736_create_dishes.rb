class CreateDishes < ActiveRecord::Migration
  def change
    create_table :dishes do |t|
      t.string :location
      t.string :date_tried

      t.timestamps

    end
  end
end
