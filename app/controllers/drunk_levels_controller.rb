class DrunkLevelsController < ApplicationController
  before_action :set_drunk_level, only: [:show, :edit, :update, :destroy]

  # GET /drunk_levels
  # GET /drunk_levels.json
  def index
    @drunk_levels = DrunkLevel.all
  end

  # GET /drunk_levels/1
  # GET /drunk_levels/1.json
  def show
  end

  # GET /drunk_levels/new
  def new
    @drunk_level = DrunkLevel.new
  end

  # GET /drunk_levels/1/edit
  def edit
  end

  # POST /drunk_levels
  # POST /drunk_levels.json
  def create
    @drunk_level = DrunkLevel.new(drunk_level_params)

    respond_to do |format|
      if @drunk_level.save
        format.html { redirect_to @drunk_level, notice: 'Drunk level was successfully created.' }
        format.json { render :show, status: :created, location: @drunk_level }
      else
        format.html { render :new }
        format.json { render json: @drunk_level.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /drunk_levels/1
  # PATCH/PUT /drunk_levels/1.json
  def update
    respond_to do |format|
      if @drunk_level.update(drunk_level_params)
        format.html { redirect_to @drunk_level, notice: 'Drunk level was successfully updated.' }
        format.json { render :show, status: :ok, location: @drunk_level }
      else
        format.html { render :edit }
        format.json { render json: @drunk_level.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /drunk_levels/1
  # DELETE /drunk_levels/1.json
  def destroy
    @drunk_level.destroy
    respond_to do |format|
      format.html { redirect_to drunk_levels_url, notice: 'Drunk level was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_drunk_level
      @drunk_level = DrunkLevel.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def drunk_level_params
      params.require(:drunk_level).permit(:name, :description, :icon)
    end
end
