class Beacon < ApplicationRecord
  belongs_to :function
  has_one :semaforo
end
