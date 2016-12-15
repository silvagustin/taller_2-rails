class Beacon < ApplicationRecord
  belongs_to :function
  has_one :semaforo

  validates :nombre, uniqueness: true
end
