class BeaconsController < ApplicationController
  #before_action :set_beacon, only: [ :show, :edit, :update, :destroy ]
  before_action :set_beacon, only: [ :edit, :update, :destroy ]

  def show
    @beacon = Beacon.find_by(nombre: params[:id]) || Beacon.find(params[:id])

    if params[:mac_address].present?

      if @dispositivo = Dispositivo.find_by(mac_address: params[:mac_address])
        @dispositivo.actualizar_ultima_conexion!
      else
        Dispositivo.create(mac_address: params[:mac_address],
                           beacon: @beacon,
                           ultima_conexion: Time.now)
      end

    end

    respond_to do |format|
      format.html
      format.json { render json: @beacon }
    end
  end

  def index
    @beacons = Beacon.all
  end

  def new
    @beacon = Beacon.new
  end

  def create
    @beacon = Beacon.new(beacon_params)

    if @beacon.save
      redirect_to @beacon
    else
      render 'new'
    end
  end

  def edit
  end

  def update
    if @beacon.update(beacon_params)
      redirect_to @beacon
    else
      render 'edit'
    end
  end

  def destroy
    @beacon.destroy

    redirect_to beacons_path
  end

  private

    def beacon_params
      params.require(:beacon).permit(:uuid, :latitud, :longitud, :function_id, :nombre, :nombre_largo)
    end

    def set_beacon
      @beacon = Beacon.find(params[:id])
    end
end
