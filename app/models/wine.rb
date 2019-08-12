class Wine < ApplicationRecord
  # Direct associations

  belongs_to :producer

  belongs_to :region

  belongs_to :coutry,
             :class_name => "Country"

  belongs_to :type

  has_many   :ratings,
             :dependent => :destroy

  has_many   :cellars,
             :dependent => :destroy

  # Indirect associations

  # Validations

end
