class Admin < ApplicationRecord
    validates :name, :password, presence: true

end
