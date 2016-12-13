class Function < ApplicationRecord
  has_many :beacons

  validates :nombre, uniqueness: true
end
