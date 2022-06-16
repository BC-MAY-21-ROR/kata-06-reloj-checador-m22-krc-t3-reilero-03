class Attendance < ApplicationRecord
  validates :check_in, :check_out, presence: true
  
  belongs_to :employee
end
