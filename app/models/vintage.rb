class Vintage < ApplicationRecord
  # Direct associations

  has_many   :cellars,
             :foreign_key => "vitage_id",
             :dependent => :destroy

  # Indirect associations

  # Validations

end
