class Venue < ApplicationRecord
  # Direct associations

  has_many   :best_foods,
             :dependent => :destroy

  # Indirect associations

  # Validations

end
