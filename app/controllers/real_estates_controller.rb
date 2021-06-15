class RealEstatesController < ApplicationController
  before_action :set_real_estate, only: [:show, :edit, :update, :destroy]

  # GET /real_estates
  def index
    @real_estates = RealEstate.all
  end

  # GET /real_estates/1
  def show
  end

  # GET /real_estates/new
  def new
    @real_estate = RealEstate.new
  end

  # GET /real_estates/1/edit
  def edit
  end

  # POST /real_estates
  def create
    @real_estate = RealEstate.new(real_estate_params)

    if @real_estate.save
      redirect_to @real_estate, notice: 'Real estate was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /real_estates/1
  def update
    if @real_estate.update(real_estate_params)
      redirect_to @real_estate, notice: 'Real estate was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /real_estates/1
  def destroy
    @real_estate.destroy
    redirect_to real_estates_url, notice: 'Real estate was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_real_estate
      @real_estate = RealEstate.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def real_estate_params
      params.fetch(:real_estate, {})
    end
end
