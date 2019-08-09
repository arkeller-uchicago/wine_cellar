class Country < ApplicationRecord
  # Direct associations

  has_many   :wines,
             :foreign_key => "type_id",
             :dependent => :destroy

  # Indirect associations

  # Validations

end
