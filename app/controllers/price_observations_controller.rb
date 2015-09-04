class PriceObservationsController < ApplicationController
  before_action :set_price_observation, only: [:show, :edit, :update, :destroy]

  # GET /price_observations
  # GET /price_observations.json
  def index
    @price_observations = PriceObservation.all
  end

  # GET /price_observations/1
  # GET /price_observations/1.json
  def show
  end

  # GET /price_observations/new
  def new
    @price_observation = PriceObservation.new
  end

  # GET /price_observations/1/edit
  def edit
  end

  # POST /price_observations
  # POST /price_observations.json
  def create
    @price_observation = PriceObservation.new(price_observation_params)

    respond_to do |format|
      if @price_observation.save
        format.html { redirect_to @price_observation, notice: 'Price observation was successfully created.' }
        format.json { render :show, status: :created, location: @price_observation }
      else
        format.html { render :new }
        format.json { render json: @price_observation.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /price_observations/1
  # PATCH/PUT /price_observations/1.json
  def update
    respond_to do |format|
      if @price_observation.update(price_observation_params)
        format.html { redirect_to @price_observation, notice: 'Price observation was successfully updated.' }
        format.json { render :show, status: :ok, location: @price_observation }
      else
        format.html { render :edit }
        format.json { render json: @price_observation.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /price_observations/1
  # DELETE /price_observations/1.json
  def destroy
    @price_observation.destroy
    respond_to do |format|
      format.html { redirect_to price_observations_url, notice: 'Price observation was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_price_observation
      @price_observation = PriceObservation.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def price_observation_params
      params.require(:price_observation).permit(:item_id, :user_id, :store_id, :price)
    end
end
