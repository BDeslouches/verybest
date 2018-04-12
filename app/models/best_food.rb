class BestFood < ApplicationRecord
  # Direct associations

  belongs_to :best_spot,
             :class_name => "Venue",
             :foreign_key => "venue_id",
             :counter_cache => true

  belongs_to :location,
             :class_name => "Dish",
             :foreign_key => "dish_id"

  # Indirect associations

  # Validations

end
