class Wine < ApplicationRecord
  mount_uploader :picture, PictureUploader

  # Direct associations

  belongs_to :region,
             :class_name => "Producer"

  belongs_to :coutry,
             :class_name => "Region"

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
