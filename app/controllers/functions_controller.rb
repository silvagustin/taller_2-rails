class FunctionsController < ApplicationController
  before_action :set_function, only: [ :show, :edit, :update, :destroy ]

  def show
    respond_to do |format|
      format.html
      format.json { render json: @function }
    end
  end

  def index
    @functions = Function.all
  end

  def new
    @function = Function.new
  end

  def create
    @function = Function.new(function_params)

    if @function.save
      redirect_to @function
    else
      render 'new'
    end
  end

  def edit
  end

  def update
    if @function.update(function_params)
      redirect_to @function
    else
      render 'edit'
    end
  end

  def destroy
    @function.destroy

    redirect_to functiones_path
  end

  private

    def function_params
      params.require(:function).permit(:nombre)
    end

    def set_function
      @function = Function.find(params[:id])
    end
end
