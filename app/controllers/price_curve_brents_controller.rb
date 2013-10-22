class PriceCurveBrentsController < ApplicationController
  before_action :set_price_curve_brent, only: [:show, :edit, :update, :destroy]

  # GET /price_curve_brents
  # GET /price_curve_brents.json
  def index
    @price_curve_brents = PriceCurveBrent.all
  end

  # GET /price_curve_brents/1
  # GET /price_curve_brents/1.json
  def show
  end

  # GET /price_curve_brents/new
  def new
    @price_curve_brent = PriceCurveBrent.new
  end

  # GET /price_curve_brents/1/edit
  def edit
  end

  # POST /price_curve_brents
  # POST /price_curve_brents.json
  def create
    @price_curve_brent = PriceCurveBrent.new(price_curve_brent_params)

    respond_to do |format|
      if @price_curve_brent.save
        format.html { redirect_to @price_curve_brent, notice: 'Price curve brent was successfully created.' }
        format.json { render action: 'show', status: :created, location: @price_curve_brent }
      else
        format.html { render action: 'new' }
        format.json { render json: @price_curve_brent.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /price_curve_brents/1
  # PATCH/PUT /price_curve_brents/1.json
  def update
    respond_to do |format|
      if @price_curve_brent.update(price_curve_brent_params)
        format.html { redirect_to @price_curve_brent, notice: 'Price curve brent was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @price_curve_brent.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /price_curve_brents/1
  # DELETE /price_curve_brents/1.json
  def destroy
    @price_curve_brent.destroy
    respond_to do |format|
      format.html { redirect_to price_curve_brents_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_price_curve_brent
      @price_curve_brent = PriceCurveBrent.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def price_curve_brent_params
      params.require(:price_curve_brent).permit(:month_year, :settle_price)
    end
end
