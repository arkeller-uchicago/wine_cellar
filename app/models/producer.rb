class Producer < ApplicationRecord
  # Direct associations

  has_many   :wines,
             :dependent => :destroy

  # Indirect associations

  # Validations

end
