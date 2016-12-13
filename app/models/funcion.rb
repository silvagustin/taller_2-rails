class Funcion < ApplicationRecord
  has_many :beacons

  validates :nombre, uniqueness: true
end
