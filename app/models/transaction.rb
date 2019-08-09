class Transaction < ApplicationRecord
  # Direct associations

  has_many   :cellars,
             :foreign_key => "transactions_id",
             :dependent => :destroy

  # Indirect associations

  # Validations

end
