class CreatorProductsController < ApplicationController
  before_action :set_creator_product, only: [:show, :edit, :update, :destroy]

  # GET /creator_products
  # GET /creator_products.json
  def index
    @creator_products = CreatorProduct.all
  end

  # GET /creator_products/1
  # GET /creator_products/1.json
  def show
  end

  # GET /creator_products/new
  def new
    @creator_product = CreatorProduct.new
  end

  # GET /creator_products/1/edit
  def edit
  end

  # POST /creator_products
  # POST /creator_products.json
  def create
    @creator_product = CreatorProduct.new(creator_product_params)

    respond_to do |format|
      if @creator_product.save
        format.html { redirect_to @creator_product, notice: 'Creator product was successfully created.' }
        format.json { render :show, status: :created, location: @creator_product }
      else
        format.html { render :new }
        format.json { render json: @creator_product.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /creator_products/1
  # PATCH/PUT /creator_products/1.json
  def update
    respond_to do |format|
      if @creator_product.update(creator_product_params)
        format.html { redirect_to @creator_product, notice: 'Creator product was successfully updated.' }
        format.json { render :show, status: :ok, location: @creator_product }
      else
        format.html { render :edit }
        format.json { render json: @creator_product.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /creator_products/1
  # DELETE /creator_products/1.json
  def destroy
    @creator_product.destroy
    respond_to do |format|
      format.html { redirect_to creator_products_url, notice: 'Creator product was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_creator_product
      @creator_product = CreatorProduct.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def creator_product_params
      params.require(:creator_product).permit(:product_id, :creator_id)
    end
end
