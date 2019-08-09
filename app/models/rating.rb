class Rating < ApplicationRecord
  # Direct associations

  belongs_to :size,
             :class_name => "BottleSize"

  belongs_to :vintage

  belongs_to :wine

  belongs_to :user

  # Indirect associations

  # Validations

end
