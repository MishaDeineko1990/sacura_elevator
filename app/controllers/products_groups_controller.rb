class ProductsGroupsController < ApplicationController
  before_action :set_products_group, only: %i[ show edit update destroy ]

  # GET /products_groups or /products_groups.json
  def index
    @products_groups = ProductsGroup.all
  end

  # GET /products_groups/1 or /products_groups/1.json
  def show
  end

  # GET /products_groups/new
  def new
    @products_group = ProductsGroup.new
  end

  # GET /products_groups/1/edit
  def edit
  end

  # POST /products_groups or /products_groups.json
  def create
    @products_group = ProductsGroup.new(products_group_params)

    respond_to do |format|
      if @products_group.save
        format.html { redirect_to products_group_url(@products_group), notice: "Products group was successfully created." }
        format.json { render :show, status: :created, location: @products_group }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @products_group.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /products_groups/1 or /products_groups/1.json
  def update
    respond_to do |format|
      if @products_group.update(products_group_params)
        format.html { redirect_to products_group_url(@products_group), notice: "Products group was successfully updated." }
        format.json { render :show, status: :ok, location: @products_group }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @products_group.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /products_groups/1 or /products_groups/1.json
  def destroy
    @products_group.destroy

    respond_to do |format|
      format.html { redirect_to products_groups_url, notice: "Products group was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_products_group
      @products_group = ProductsGroup.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def products_group_params
      params.require(:products_group).permit(:name, :number_group)
    end
end
