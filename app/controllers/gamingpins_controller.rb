class GamingpinsController < ApplicationController
  before_action :set_gamingpin, only: [:show, :edit, :update, :destroy]

  # GET /gamingpins
  # GET /gamingpins.json
  def index
    @gamingpins = Gamingpin.all
  end

  # GET /gamingpins/1
  # GET /gamingpins/1.json
  def show
  end

  # GET /gamingpins/new
  def new
    @gamingpin = Gamingpin.new
  end

  # GET /gamingpins/1/edit
  def edit
  end

  # POST /gamingpins
  # POST /gamingpins.json
  def create
    @gamingpin = Gamingpin.new(gamingpin_params)

    respond_to do |format|
      if @gamingpin.save
        format.html { redirect_to @gamingpin, notice: 'Gamingpin was successfully created.' }
        format.json { render :show, status: :created, location: @gamingpin }
      else
        format.html { render :new }
        format.json { render json: @gamingpin.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /gamingpins/1
  # PATCH/PUT /gamingpins/1.json
  def update
    respond_to do |format|
      if @gamingpin.update(gamingpin_params)
        format.html { redirect_to @gamingpin, notice: 'Gamingpin was successfully updated.' }
        format.json { render :show, status: :ok, location: @gamingpin }
      else
        format.html { render :edit }
        format.json { render json: @gamingpin.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /gamingpins/1
  # DELETE /gamingpins/1.json
  def destroy
    @gamingpin.destroy
    respond_to do |format|
      format.html { redirect_to gamingpins_url, notice: 'Gamingpin was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_gamingpin
      @gamingpin = Gamingpin.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def gamingpin_params
      params.require(:gamingpin).permit(:description, :image)
    end
end
