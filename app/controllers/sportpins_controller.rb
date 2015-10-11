class SportpinsController < ApplicationController
  before_action :set_sportpin, only: [:show, :edit, :update, :destroy]

  # GET /sportpins
  # GET /sportpins.json
  def index
    @sportpins = Sportpin.all
  end

  # GET /sportpins/1
  # GET /sportpins/1.json
  def show
  end

  # GET /sportpins/new
  def new
    @sportpin = Sportpin.new
  end

  # GET /sportpins/1/edit
  def edit
  end

  # POST /sportpins
  # POST /sportpins.json
  def create
    @sportpin = Sportpin.new(sportpin_params)

    respond_to do |format|
      if @sportpin.save
        format.html { redirect_to @sportpin, notice: 'Sportpin was successfully created.' }
        format.json { render :show, status: :created, location: @sportpin }
      else
        format.html { render :new }
        format.json { render json: @sportpin.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /sportpins/1
  # PATCH/PUT /sportpins/1.json
  def update
    respond_to do |format|
      if @sportpin.update(sportpin_params)
        format.html { redirect_to @sportpin, notice: 'Sportpin was successfully updated.' }
        format.json { render :show, status: :ok, location: @sportpin }
      else
        format.html { render :edit }
        format.json { render json: @sportpin.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /sportpins/1
  # DELETE /sportpins/1.json
  def destroy
    @sportpin.destroy
    respond_to do |format|
      format.html { redirect_to sportpins_url, notice: 'Sportpin was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_sportpin
      @sportpin = Sportpin.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def sportpin_params
      params.require(:sportpin).permit(:description, :image)
    end
end
