class PriceCurveWtisController < ApplicationController
  before_action :set_price_curve_wti, only: [:show, :edit, :update, :destroy]

  # GET /price_curve_wtis
  # GET /price_curve_wtis.json
  def index
    @price_curve_wtis = PriceCurveWti.all
  end

  # GET /price_curve_wtis/1
  # GET /price_curve_wtis/1.json
  def show
  end

  # GET /price_curve_wtis/new
  def new
    @price_curve_wti = PriceCurveWti.new
  end

  # GET /price_curve_wtis/1/edit
  def edit
  end

  # POST /price_curve_wtis
  # POST /price_curve_wtis.json
  def create
    @price_curve_wti = PriceCurveWti.new(price_curve_wti_params)

    respond_to do |format|
      if @price_curve_wti.save
        format.html { redirect_to @price_curve_wti, notice: 'Price curve wti was successfully created.' }
        format.json { render action: 'show', status: :created, location: @price_curve_wti }
      else
        format.html { render action: 'new' }
        format.json { render json: @price_curve_wti.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /price_curve_wtis/1
  # PATCH/PUT /price_curve_wtis/1.json
  def update
    respond_to do |format|
      if @price_curve_wti.update(price_curve_wti_params)
        format.html { redirect_to @price_curve_wti, notice: 'Price curve wti was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @price_curve_wti.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /price_curve_wtis/1
  # DELETE /price_curve_wtis/1.json
  def destroy
    @price_curve_wti.destroy
    respond_to do |format|
      format.html { redirect_to price_curve_wtis_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_price_curve_wti
      @price_curve_wti = PriceCurveWti.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def price_curve_wti_params
      params.require(:price_curve_wti).permit(:month_year, :settle_price)
    end
end
