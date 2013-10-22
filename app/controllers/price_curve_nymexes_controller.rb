class PriceCurveNymexesController < ApplicationController
  before_action :set_price_curve_nymex, only: [:show, :edit, :update, :destroy]

  # GET /price_curve_nymexes
  # GET /price_curve_nymexes.json
  def index
    @price_curve_nymexes = PriceCurveNymex.all
  end

  # GET /price_curve_nymexes/1
  # GET /price_curve_nymexes/1.json
  def show
  end

  # GET /price_curve_nymexes/new
  def new
    @price_curve_nymex = PriceCurveNymex.new
  end

  # GET /price_curve_nymexes/1/edit
  def edit
  end

  # POST /price_curve_nymexes
  # POST /price_curve_nymexes.json
  def create
    @price_curve_nymex = PriceCurveNymex.new(price_curve_nymex_params)

    respond_to do |format|
      if @price_curve_nymex.save
        format.html { redirect_to @price_curve_nymex, notice: 'Price curve nymex was successfully created.' }
        format.json { render action: 'show', status: :created, location: @price_curve_nymex }
      else
        format.html { render action: 'new' }
        format.json { render json: @price_curve_nymex.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /price_curve_nymexes/1
  # PATCH/PUT /price_curve_nymexes/1.json
  def update
    respond_to do |format|
      if @price_curve_nymex.update(price_curve_nymex_params)
        format.html { redirect_to @price_curve_nymex, notice: 'Price curve nymex was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @price_curve_nymex.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /price_curve_nymexes/1
  # DELETE /price_curve_nymexes/1.json
  def destroy
    @price_curve_nymex.destroy
    respond_to do |format|
      format.html { redirect_to price_curve_nymexes_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_price_curve_nymex
      @price_curve_nymex = PriceCurveNymex.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def price_curve_nymex_params
      params.require(:price_curve_nymex).permit(:month_year, :settle_price)
    end
end
