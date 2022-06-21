class Attendance < ApplicationRecord
  validates :check_in, presence: true

  belongs_to :employee
end
