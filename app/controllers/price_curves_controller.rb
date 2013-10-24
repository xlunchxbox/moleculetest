class PriceCurvesController < ApplicationController
  before_action :set_price_curf, only: [:show, :edit, :update, :destroy]

  # GET /price_curves
  # GET /price_curves.json
  def index
    @price_curves = PriceCurve.all
  end

  # GET /price_curves/1
  # GET /price_curves/1.json
  def show
  end

  # GET /price_curves/new
  def new
    @price_curf = PriceCurve.new
  end

  # GET /price_curves/1/edit
  def edit
  end

  # POST /price_curves
  # POST /price_curves.json
  def create
    @price_curf = PriceCurve.new(price_curf_params)

    respond_to do |format|
      if @price_curf.save
        format.html { redirect_to @price_curf, notice: 'Price curve was successfully created.' }
        format.json { render action: 'show', status: :created, location: @price_curf }
      else
        format.html { render action: 'new' }
        format.json { render json: @price_curf.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /price_curves/1
  # PATCH/PUT /price_curves/1.json
  def update
    respond_to do |format|
      if @price_curf.update(price_curf_params)
        format.html { redirect_to @price_curf, notice: 'Price curve was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @price_curf.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /price_curves/1
  # DELETE /price_curves/1.json
  def destroy
    @price_curf.destroy
    respond_to do |format|
      format.html { redirect_to price_curves_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_price_curf
      @price_curf = PriceCurve.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def price_curf_params
      params.require(:price_curf).permit(:curve_type, :month_year, :settle_price)
    end
end
