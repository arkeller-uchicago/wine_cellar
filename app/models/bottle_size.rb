class BottleSize < ApplicationRecord
  # Direct associations

  has_many   :cellars,
             :foreign_key => "size_id",
             :dependent => :destroy

  # Indirect associations

  # Validations

end
