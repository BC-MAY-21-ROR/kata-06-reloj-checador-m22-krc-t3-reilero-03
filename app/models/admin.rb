class Admin < ApplicationRecord
  # adds virtual attributes for authentication
  has_secure_password
  validates :name, presence: true, uniqueness: true

end
