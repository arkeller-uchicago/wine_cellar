class Region < ApplicationRecord
  # Direct associations

  has_many   :wines,
             :foreign_key => "coutry_id",
             :dependent => :destroy

  # Indirect associations

  # Validations

end
