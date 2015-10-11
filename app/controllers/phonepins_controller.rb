class PhonepinsController < ApplicationController
  before_action :set_phonepin, only: [:show, :edit, :update, :destroy]

  # GET /phonepins
  # GET /phonepins.json
  def index
    @phonepins = Phonepin.all
  end

  # GET /phonepins/1
  # GET /phonepins/1.json
  def show
  end

  # GET /phonepins/new
  def new
    @phonepin = Phonepin.new
  end

  # GET /phonepins/1/edit
  def edit
  end

  # POST /phonepins
  # POST /phonepins.json
  def create
    @phonepin = Phonepin.new(phonepin_params)

    respond_to do |format|
      if @phonepin.save
        format.html { redirect_to @phonepin, notice: 'Phonepin was successfully created.' }
        format.json { render :show, status: :created, location: @phonepin }
      else
        format.html { render :new }
        format.json { render json: @phonepin.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /phonepins/1
  # PATCH/PUT /phonepins/1.json
  def update
    respond_to do |format|
      if @phonepin.update(phonepin_params)
        format.html { redirect_to @phonepin, notice: 'Phonepin was successfully updated.' }
        format.json { render :show, status: :ok, location: @phonepin }
      else
        format.html { render :edit }
        format.json { render json: @phonepin.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /phonepins/1
  # DELETE /phonepins/1.json
  def destroy
    @phonepin.destroy
    respond_to do |format|
      format.html { redirect_to phonepins_url, notice: 'Phonepin was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_phonepin
      @phonepin = Phonepin.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def phonepin_params
      params.require(:phonepin).permit(:description, :image)
    end
end
