class Beacon < ApplicationRecord
  belongs_to :function
  has_one :semaforo
  has_many :dispositivos

  validates :nombre, uniqueness: true
end
