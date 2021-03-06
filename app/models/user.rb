class User < ApplicationRecord
  # Direct associations

  has_many   :ratins,
             :class_name => "Rating",
             :dependent => :destroy

  has_many   :cellars,
             :dependent => :destroy

  # Indirect associations

  # Validations

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
