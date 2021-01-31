class PeoductsController < ApplicationController
  before_action :set_peoduct, only: %i[ show edit update destroy ]

  # GET /peoducts or /peoducts.json
  def index
    @peoducts = Peoduct.all
  end

  # GET /peoducts/1 or /peoducts/1.json
  def show
  end

  # GET /peoducts/new
  def new
    @peoduct = Peoduct.new
  end

  # GET /peoducts/1/edit
  def edit
  end

  # POST /peoducts or /peoducts.json
  def create
    @peoduct = Peoduct.new(peoduct_params)

    respond_to do |format|
      if @peoduct.save
        format.html { redirect_to @peoduct, notice: "Peoduct was successfully created." }
        format.json { render :show, status: :created, location: @peoduct }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @peoduct.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /peoducts/1 or /peoducts/1.json
  def update
    respond_to do |format|
      if @peoduct.update(peoduct_params)
        format.html { redirect_to @peoduct, notice: "Peoduct was successfully updated." }
        format.json { render :show, status: :ok, location: @peoduct }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @peoduct.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /peoducts/1 or /peoducts/1.json
  def destroy
    @peoduct.destroy
    respond_to do |format|
      format.html { redirect_to peoducts_url, notice: "Peoduct was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_peoduct
      @peoduct = Peoduct.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def peoduct_params
      params.require(:peoduct).permit(:name, :price, :vendor)
    end
end
