class ProductPointsController < ApplicationController
  before_action :set_product_point, only: [:show, :edit, :update, :destroy]

  # GET /product_points
  # GET /product_points.json
  def index
    @product_points = ProductPoint.all
  end

  # GET /product_points/1
  # GET /product_points/1.json
  def show
  end

  # GET /product_points/new
  def new
    @product_point = ProductPoint.new
  end

  # GET /product_points/1/edit
  def edit
  end

  # POST /product_points
  # POST /product_points.json
  def create
    @product_point = ProductPoint.new(product_point_params)

    respond_to do |format|
      if @product_point.save
        format.html { redirect_to @product_point, notice: 'Product point was successfully created.' }
        format.json { render :show, status: :created, location: @product_point }
      else
        format.html { render :new }
        format.json { render json: @product_point.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /product_points/1
  # PATCH/PUT /product_points/1.json
  def update
    respond_to do |format|
      if @product_point.update(product_point_params)
        format.html { redirect_to @product_point, notice: 'Product point was successfully updated.' }
        format.json { render :show, status: :ok, location: @product_point }
      else
        format.html { render :edit }
        format.json { render json: @product_point.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /product_points/1
  # DELETE /product_points/1.json
  def destroy
    @product_point.destroy
    respond_to do |format|
      format.html { redirect_to product_points_url, notice: 'Product point was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_product_point
      @product_point = ProductPoint.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def product_point_params
      params.require(:product_point).permit(:product_id, :user_id)
    end
end
