class BeerCatalogsController < ApplicationController
  before_action :set_beer_catalog, only: [:show, :edit, :update, :destroy]

  # GET /beer_catalogs
  # GET /beer_catalogs.json
  def index
    @beer_catalogs = BeerCatalog.all
  end

  # GET /beer_catalogs/1
  # GET /beer_catalogs/1.json
  def show
  end

  # GET /beer_catalogs/new
  def new
    @beer_catalog = BeerCatalog.new
  end

  # GET /beer_catalogs/1/edit
  def edit
  end

  # POST /beer_catalogs
  # POST /beer_catalogs.json
  def create
    @beer_catalog = BeerCatalog.new(beer_catalog_params)

    respond_to do |format|
      if @beer_catalog.save
        format.html { redirect_to @beer_catalog, notice: 'Beer catalog was successfully created.' }
        format.json { render :show, status: :created, location: @beer_catalog }
      else
        format.html { render :new }
        format.json { render json: @beer_catalog.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /beer_catalogs/1
  # PATCH/PUT /beer_catalogs/1.json
  def update
    respond_to do |format|
      if @beer_catalog.update(beer_catalog_params)
        format.html { redirect_to @beer_catalog, notice: 'Beer catalog was successfully updated.' }
        format.json { render :show, status: :ok, location: @beer_catalog }
      else
        format.html { render :edit }
        format.json { render json: @beer_catalog.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /beer_catalogs/1
  # DELETE /beer_catalogs/1.json
  def destroy
    @beer_catalog.destroy
    respond_to do |format|
      format.html { redirect_to beer_catalogs_url, notice: 'Beer catalog was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_beer_catalog
      @beer_catalog = BeerCatalog.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def beer_catalog_params
      params.require(:beer_catalog).permit(:beer_name, :price)
    end
end
