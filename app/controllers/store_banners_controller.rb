class StoreBannersController < ApplicationController
  before_action :set_store_banner, only: [:show, :edit, :update, :destroy]

  # GET /store_banners
  # GET /store_banners.json
  def index
    @store_banners = StoreBanner.all
  end

  # GET /store_banners/1
  # GET /store_banners/1.json
  def show
  end

  # GET /store_banners/new
  def new
    @store_banner = StoreBanner.new
  end

  # GET /store_banners/1/edit
  def edit
  end

  # POST /store_banners
  # POST /store_banners.json
  def create
    @store_banner = StoreBanner.new(store_banner_params)

    respond_to do |format|
      if @store_banner.save
        format.html { redirect_to @store_banner, notice: 'Store banner was successfully created.' }
        format.json { render :show, status: :created, location: @store_banner }
      else
        format.html { render :new }
        format.json { render json: @store_banner.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /store_banners/1
  # PATCH/PUT /store_banners/1.json
  def update
    respond_to do |format|
      if @store_banner.update(store_banner_params)
        format.html { redirect_to @store_banner, notice: 'Store banner was successfully updated.' }
        format.json { render :show, status: :ok, location: @store_banner }
      else
        format.html { render :edit }
        format.json { render json: @store_banner.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /store_banners/1
  # DELETE /store_banners/1.json
  def destroy
    @store_banner.destroy
    respond_to do |format|
      format.html { redirect_to store_banners_url, notice: 'Store banner was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_store_banner
      @store_banner = StoreBanner.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def store_banner_params
      params.require(:store_banner).permit(:name)
    end
end
