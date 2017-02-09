class Dispositivo < ApplicationRecord
  belongs_to :beacon

  validates :mac_address, uniqueness: true

  def paso_un_tiempo?
    ultima_conexion < 5.seconds.ago
  end

  def actualizar_ultima_conexion!
    update(ultima_conexion: Time.now) if paso_un_tiempo?
  end
end
