class SemaforosController < ApplicationController
  before_action :set_semaforo, only: [ :show ]

  def show
    nuevo_estado = @semaforo.cambiar_estado
    @semaforo.update(estado: nuevo_estado)

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @semaforo }
    end
  end

  private

    def set_semaforo
      @semaforo = Semaforo.find(params[:id])
    end
end
