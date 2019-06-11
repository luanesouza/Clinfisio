class Appointment < ApplicationRecord
  belongs_to :doctor
  belongs_to :patient
  has_many :sessions
end
