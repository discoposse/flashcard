class FlashvendorsController < ApplicationController
  before_action :set_flashvendor, only: [:show, :edit, :update, :destroy]

  # GET /flashvendors
  # GET /flashvendors.json
  def index
    @flashvendors = Flashvendor.all
  end

  # GET /flashvendors/1
  # GET /flashvendors/1.json
  def show
  end

  # GET /flashvendors/new
  def new
    @flashvendor = Flashvendor.new
  end

  # GET /flashvendors/1/edit
  def edit
  end

  # POST /flashvendors
  # POST /flashvendors.json
  def create
    @flashvendor = Flashvendor.new(flashvendor_params)

    respond_to do |format|
      if @flashvendor.save
        format.html { redirect_to @flashvendor, notice: 'Flashvendor was successfully created.' }
        format.json { render :show, status: :created, location: @flashvendor }
      else
        format.html { render :new }
        format.json { render json: @flashvendor.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /flashvendors/1
  # PATCH/PUT /flashvendors/1.json
  def update
    respond_to do |format|
      if @flashvendor.update(flashvendor_params)
        format.html { redirect_to @flashvendor, notice: 'Flashvendor was successfully updated.' }
        format.json { render :show, status: :ok, location: @flashvendor }
      else
        format.html { render :edit }
        format.json { render json: @flashvendor.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /flashvendors/1
  # DELETE /flashvendors/1.json
  def destroy
    @flashvendor.destroy
    respond_to do |format|
      format.html { redirect_to flashvendors_url, notice: 'Flashvendor was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_flashvendor
      @flashvendor = Flashvendor.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def flashvendor_params
      params.require(:flashvendor).permit(:vendor_name, :vendor_description, :vendor_url)
    end
end
