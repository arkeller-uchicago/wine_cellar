class Cellar < ApplicationRecord
  # Direct associations

  belongs_to :vitage,
             :class_name => "Vintage"

  belongs_to :wine

  belongs_to :user

  # Indirect associations

  # Validations

end
