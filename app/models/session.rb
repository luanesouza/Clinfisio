class Session < ApplicationRecord
  has_many :patients, through: :appointment
end
