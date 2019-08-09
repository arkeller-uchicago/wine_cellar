class BottleSize < ApplicationRecord
  # Direct associations

  has_many   :ratings,
             :foreign_key => "size_id",
             :dependent => :destroy

  has_many   :cellars,
             :foreign_key => "size_id",
             :dependent => :destroy

  # Indirect associations

  # Validations

end
