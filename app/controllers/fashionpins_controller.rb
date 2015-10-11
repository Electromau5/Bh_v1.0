class FashionpinsController < ApplicationController
  before_action :set_fashionpin, only: [:show, :edit, :update, :destroy]

  # GET /fashionpins
  # GET /fashionpins.json
  def index
    @fashionpins = Fashionpin.all
  end

  # GET /fashionpins/1
  # GET /fashionpins/1.json
  def show
  end

  # GET /fashionpins/new
  def new
    @fashionpin = Fashionpin.new
  end

  # GET /fashionpins/1/edit
  def edit
  end

  # POST /fashionpins
  # POST /fashionpins.json
  def create
    @fashionpin = Fashionpin.new(fashionpin_params)

    respond_to do |format|
      if @fashionpin.save
        format.html { redirect_to @fashionpin, notice: 'Fashionpin was successfully created.' }
        format.json { render :show, status: :created, location: @fashionpin }
      else
        format.html { render :new }
        format.json { render json: @fashionpin.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /fashionpins/1
  # PATCH/PUT /fashionpins/1.json
  def update
    respond_to do |format|
      if @fashionpin.update(fashionpin_params)
        format.html { redirect_to @fashionpin, notice: 'Fashionpin was successfully updated.' }
        format.json { render :show, status: :ok, location: @fashionpin }
      else
        format.html { render :edit }
        format.json { render json: @fashionpin.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /fashionpins/1
  # DELETE /fashionpins/1.json
  def destroy
    @fashionpin.destroy
    respond_to do |format|
      format.html { redirect_to fashionpins_url, notice: 'Fashionpin was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_fashionpin
      @fashionpin = Fashionpin.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def fashionpin_params
      params.require(:fashionpin).permit(:description, :image)
    end
end
