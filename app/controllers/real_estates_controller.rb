class RealEstatesController < ApplicationController
  before_action :set_real_estate, only: [:show, :edit, :update, :destroy]

  # GET /real_estates
  def index
    begin
      @real_estates = RealEstate.all.select(:id, :name, :type, :city, :country)
      render :json => @real_estates, status: 200
    rescue Exception => e
      render json: { error: "Error:#{e}.", status: 400 }, status: 400
    end
  end

  # GET /real_estates/1
  def show
    begin
      render json: @real_estate, status: 200
    rescue Exception => e
      render json: { error: "Error:#{e}.", status: 400 }, status: 400
    end
  end

  # POST /real_estates
  def create
    begin
        @real_estate = RealEstate.new(real_estate_params)
        if @real_estate.save
          render json: @real_estate, status: 201
        else
          render json: { error: "Error:#{@real_estate.errors}.", status: 400 }, status: 400
        end
    rescue Exception => e
      render json: { error: "Error:#{e}.", status: 400 }, status: 400
    end

  end

  # PATCH/PUT /real_estates/1
  def update
    begin
      if @real_estate.update(real_estate_params)
        render json: @real_estate, status: 201
      else
        render json: @real_estate.errors, status: 400
      end
    rescue Exception => e
      render json: { error: "Error:#{e}.", status: 400 }, status: 400
    end
  end

  # DELETE /real_estates/1
  def destroy
    begin
      @real_estate.destroy
      render json: @real_estate, status: 201
    rescue Exception => e
      render json: { error: "Error: Real estate was not destroyed.", status: 400 }, status: 400
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_real_estate
      @real_estate = RealEstate.find_by_id(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def real_estate_params
      params.require(:real_estate).permit(:name, :type, :street, :external_number, :internal_number, :neighborhood, :city, :country, :rooms, :bathrooms, :comments)
    end
end
