class Producer < ApplicationRecord
  # Direct associations

  has_many   :wines,
             :foreign_key => "region_id",
             :dependent => :destroy

  # Indirect associations

  # Validations

end
