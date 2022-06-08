class Employee < ApplicationRecord
  validates :name, :presence :true, length: { minimum: 2 } 
  validates :email, :position, :employee_number, :private_number, :active, presence: true
  validates :email, private_number, uniqueness: true

  belongs_to :branch
  has_many :attendances
  
end
