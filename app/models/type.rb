class Type < ApplicationRecord
  # Direct associations

  has_many   :wines,
             :foreign_key => "bottle_size_id",
             :dependent => :destroy

  # Indirect associations

  # Validations

end
