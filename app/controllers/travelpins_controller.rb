class TravelpinsController < ApplicationController
  before_action :set_travelpin, only: [:show, :edit, :update, :destroy]

  # GET /travelpins
  # GET /travelpins.json
  def index
    @travelpins = Travelpin.all
  end

  # GET /travelpins/1
  # GET /travelpins/1.json
  def show
  end

  # GET /travelpins/new
  def new
    @travelpin = Travelpin.new
  end

  # GET /travelpins/1/edit
  def edit
  end

  # POST /travelpins
  # POST /travelpins.json
  def create
    @travelpin = Travelpin.new(travelpin_params)

    respond_to do |format|
      if @travelpin.save
        format.html { redirect_to @travelpin, notice: 'Travelpin was successfully created.' }
        format.json { render :show, status: :created, location: @travelpin }
      else
        format.html { render :new }
        format.json { render json: @travelpin.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /travelpins/1
  # PATCH/PUT /travelpins/1.json
  def update
    respond_to do |format|
      if @travelpin.update(travelpin_params)
        format.html { redirect_to @travelpin, notice: 'Travelpin was successfully updated.' }
        format.json { render :show, status: :ok, location: @travelpin }
      else
        format.html { render :edit }
        format.json { render json: @travelpin.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /travelpins/1
  # DELETE /travelpins/1.json
  def destroy
    @travelpin.destroy
    respond_to do |format|
      format.html { redirect_to travelpins_url, notice: 'Travelpin was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_travelpin
      @travelpin = Travelpin.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def travelpin_params
      params.require(:travelpin).permit(:description, :image)
    end
end
