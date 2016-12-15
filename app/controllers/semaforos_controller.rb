class SemaforosController < ApplicationController
  before_action :set_semaforo, only: [ :show, :edit, :update, :destroy ]

  def show
    nuevo_estado = @semaforo.cambiar_estado
    @semaforo.update(estado: nuevo_estado)

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @semaforo }
    end
  end

  def index
    @semaforos = Semaforo.all
  end

  def new
    @semaforo = Semaforo.new
  end

  def create
    @semaforo = Semaforo.new(semaforo_params)

    if @semaforo.save
      redirect_to @semaforo
    else
      render 'new'
    end
  end

  def edit
  end

  def update
    if @semaforo.update(semaforo_params)
      redirect_to @semaforo
    else
      render 'new'
    end
  end

  def destroy
    @semaforo.destroy

    redirect_to semaforos_path
  end

  private

    def semaforo_params
      params.require(:semaforo).permit(:beacon_id)
    end

    def set_semaforo
      @semaforo = Semaforo.find(params[:id])
    end
end
