class LossPlacesController < ApplicationController
  before_action :set_loss_place, only: %i[ show edit update destroy ]

  # GET /loss_places or /loss_places.json
  def index
    @loss_places = LossPlace.all
  end

  # GET /loss_places/1 or /loss_places/1.json
  def show
  end

  # GET /loss_places/new
  def new
    @loss_place = LossPlace.new
  end

  # GET /loss_places/1/edit
  def edit
  end

  # POST /loss_places or /loss_places.json
  def create
    @loss_place = LossPlace.new(loss_place_params)

    respond_to do |format|
      if @loss_place.save
        format.html { redirect_to @loss_place, notice: "Loss place was successfully created." }
        format.json { render :show, status: :created, location: @loss_place }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @loss_place.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /loss_places/1 or /loss_places/1.json
  def update
    respond_to do |format|
      if @loss_place.update(loss_place_params)
        format.html { redirect_to @loss_place, notice: "Loss place was successfully updated." }
        format.json { render :show, status: :ok, location: @loss_place }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @loss_place.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /loss_places/1 or /loss_places/1.json
  def destroy
    @loss_place.destroy
    respond_to do |format|
      format.html { redirect_to loss_places_url, notice: "Loss place was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_loss_place
      @loss_place = LossPlace.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def loss_place_params
      params.require(:loss_place).permit(:latitude, :longitude)
    end
end
