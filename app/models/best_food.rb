class BestFood < ApplicationRecord
  # Direct associations

  belongs_to :location,
             :class_name => "Dish",
             :foreign_key => "dish_id"

  # Indirect associations

  # Validations

end
