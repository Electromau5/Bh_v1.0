class ArtpinsController < ApplicationController
  before_action :set_artpin, only: [:show, :edit, :update, :destroy]

  # GET /artpins
  # GET /artpins.json
  def index
    @artpins = Artpin.all
  end

  # GET /artpins/1
  # GET /artpins/1.json
  def show
  end

  # GET /artpins/new
  def new
    @artpin = Artpin.new
  end

  # GET /artpins/1/edit
  def edit
  end

  # POST /artpins
  # POST /artpins.json
  def create
    @artpin = Artpin.new(artpin_params)

    respond_to do |format|
      if @artpin.save
        format.html { redirect_to @artpin, notice: 'Artpin was successfully created.' }
        format.json { render :show, status: :created, location: @artpin }
      else
        format.html { render :new }
        format.json { render json: @artpin.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /artpins/1
  # PATCH/PUT /artpins/1.json
  def update
    respond_to do |format|
      if @artpin.update(artpin_params)
        format.html { redirect_to @artpin, notice: 'Artpin was successfully updated.' }
        format.json { render :show, status: :ok, location: @artpin }
      else
        format.html { render :edit }
        format.json { render json: @artpin.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /artpins/1
  # DELETE /artpins/1.json
  def destroy
    @artpin.destroy
    respond_to do |format|
      format.html { redirect_to artpins_url, notice: 'Artpin was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_artpin
      @artpin = Artpin.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def artpin_params
      params.require(:artpin).permit(:description, :image)
    end
end
