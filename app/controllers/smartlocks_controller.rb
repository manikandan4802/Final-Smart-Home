class SmartlocksController < ApplicationController
  before_action :set_smartlock, only: %i[ show edit update destroy ]

  # GET /smartlocks or /smartlocks.json
  def index
    @smartlocks = Smartlock.all
  end

  # GET /smartlocks/1 or /smartlocks/1.json
  def show
  end

  # GET /smartlocks/new
  def new
    @smartlock = Smartlock.new
  end

  # GET /smartlocks/1/edit
  def edit
  end

  # POST /smartlocks or /smartlocks.json
  def create
    @smartlock = Smartlock.new(smartlock_params)

    respond_to do |format|
      if @smartlock.save
        format.html { redirect_to smartlock_url(@smartlock), notice: "Smartlock was successfully created." }
        format.json { render :show, status: :created, location: @smartlock }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @smartlock.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /smartlocks/1 or /smartlocks/1.json
  def update
    respond_to do |format|
      if @smartlock.update(smartlock_params)
        format.html { redirect_to smartlock_url(@smartlock), notice: "Smartlock was successfully updated." }
        format.json { render :show, status: :ok, location: @smartlock }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @smartlock.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /smartlocks/1 or /smartlocks/1.json
  def destroy
    @smartlock.destroy

    respond_to do |format|
      format.html { redirect_to smartlocks_url, notice: "Smartlock was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_smartlock
      @smartlock = Smartlock.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def smartlock_params
      params.require(:smartlock).permit(:serial_num, :company_id, :property_id)
    end
end
