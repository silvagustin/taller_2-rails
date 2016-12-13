class Semaforo < ApplicationRecord
  belongs_to :beacon

  enum estado: [ :rojo, :amarillo, :verde ]

  def cambiar_estado
    case estado
      when "rojo"
        "amarillo"
      when "amarillo"
        "verde"
      when "verde"
        "rojo"
      else
        "rojo"
      end
  end
end
