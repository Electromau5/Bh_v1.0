class SoundpinsController < ApplicationController
  before_action :set_soundpin, only: [:show, :edit, :update, :destroy]

  # GET /soundpins
  # GET /soundpins.json
  def index
    @soundpins = Soundpin.all
  end

  # GET /soundpins/1
  # GET /soundpins/1.json
  def show
  end

  # GET /soundpins/new
  def new
    @soundpin = Soundpin.new
  end

  # GET /soundpins/1/edit
  def edit
  end

  # POST /soundpins
  # POST /soundpins.json
  def create
    @soundpin = Soundpin.new(soundpin_params)

    respond_to do |format|
      if @soundpin.save
        format.html { redirect_to @soundpin, notice: 'Soundpin was successfully created.' }
        format.json { render :show, status: :created, location: @soundpin }
      else
        format.html { render :new }
        format.json { render json: @soundpin.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /soundpins/1
  # PATCH/PUT /soundpins/1.json
  def update
    respond_to do |format|
      if @soundpin.update(soundpin_params)
        format.html { redirect_to @soundpin, notice: 'Soundpin was successfully updated.' }
        format.json { render :show, status: :ok, location: @soundpin }
      else
        format.html { render :edit }
        format.json { render json: @soundpin.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /soundpins/1
  # DELETE /soundpins/1.json
  def destroy
    @soundpin.destroy
    respond_to do |format|
      format.html { redirect_to soundpins_url, notice: 'Soundpin was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_soundpin
      @soundpin = Soundpin.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def soundpin_params
      params.require(:soundpin).permit(:description, :image)
    end
end
