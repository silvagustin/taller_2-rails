class BeaconsController < ApplicationController
  before_action :set_beacon, only: [:show, :edit, :update, :destroy]

  def show
  end

  def index
    @beacons = Beacon.all
  end

  def new
    @beacon = Beacon.new
  end

  def create
    @beacon = beacon_params

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
      params.require(:beacon).permit()
    end

    def set_beacon
      @beacon = Beacon.find(params[:id])
    end
end
