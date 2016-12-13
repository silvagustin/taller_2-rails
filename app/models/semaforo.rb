class Semaforo < ApplicationRecord
  enum estado: [ :rojo, :amarillo, :verde ]

  def cambiar_estado
    case estado
      when "rojo"
        #update(estado: "amarillo") - lo ideal que el controller maneje la db
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
