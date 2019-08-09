class Wine < ApplicationRecord
  # Direct associations

  belongs_to :type,
             :class_name => "Country"

  belongs_to :bottle_size,
             :class_name => "Type"

  has_many   :ratings,
             :dependent => :destroy

  has_many   :cellars,
             :dependent => :destroy

  # Indirect associations

  # Validations

end
