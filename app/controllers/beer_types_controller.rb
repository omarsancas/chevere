class BeerTypesController < ApplicationController
  before_action :set_beer_type, only: [:show, :edit, :update, :destroy]

  # GET /beer_types
  # GET /beer_types.json
  def index
    @beer_types = BeerType.all
  end

  # GET /beer_types/1
  # GET /beer_types/1.json
  def show
  end

  # GET /beer_types/new
  def new
    @beer_type = BeerType.new
  end

  # GET /beer_types/1/edit
  def edit
  end

  # POST /beer_types
  # POST /beer_types.json
  def create
    @beer_type = BeerType.new(beer_type_params)

    respond_to do |format|
      if @beer_type.save
        format.html { redirect_to @beer_type, notice: 'Beer type was successfully created.' }
        format.json { render :show, status: :created, location: @beer_type }
      else
        format.html { render :new }
        format.json { render json: @beer_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /beer_types/1
  # PATCH/PUT /beer_types/1.json
  def update
    respond_to do |format|
      if @beer_type.update(beer_type_params)
        format.html { redirect_to @beer_type, notice: 'Beer type was successfully updated.' }
        format.json { render :show, status: :ok, location: @beer_type }
      else
        format.html { render :edit }
        format.json { render json: @beer_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /beer_types/1
  # DELETE /beer_types/1.json
  def destroy
    @beer_type.destroy
    respond_to do |format|
      format.html { redirect_to beer_types_url, notice: 'Beer type was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_beer_type
      @beer_type = BeerType.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def beer_type_params
      params.fetch(:beer_type, {})
    end
end
