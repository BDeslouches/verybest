class Dish < ApplicationRecord
  # Direct associations

  has_one    :best_spot,
             :class_name => "BestFood",
             :dependent => :destroy

  # Indirect associations

  # Validations

end
