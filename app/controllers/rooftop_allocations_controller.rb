class RooftopAllocationsController < ApplicationController
  before_action :set_rooftop_allocation, only: [:show, :edit, :update, :destroy]

  # GET /rooftop_allocations
  # GET /rooftop_allocations.json
  def index
    @rooftop_allocations = RooftopAllocation.all
  end

  # GET /rooftop_allocations/1
  # GET /rooftop_allocations/1.json
  def show
  end

  def upsert
    @products = params[:product_names]
    @products.each do |product|
      RooftopAllocation.new(:product => product, :period => '2015-01-15').save
    end
  end

  # GET /rooftop_allocations/new
  def new
    @rooftop_allocation = RooftopAllocation.new
  end

  # GET /rooftop_allocations/1/edit
  def edit
  end

  # POST /rooftop_allocations
  # POST /rooftop_allocations.json
  def create
    @rooftop_allocation = RooftopAllocation.new(rooftop_allocation_params)

    respond_to do |format|
      if @rooftop_allocation.save
        format.html { redirect_to @rooftop_allocation, notice: 'Rooftop allocation was successfully created.' }
        format.json { render :show, status: :created, location: @rooftop_allocation }
      else
        format.html { render :new }
        format.json { render json: @rooftop_allocation.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /rooftop_allocations/1
  # PATCH/PUT /rooftop_allocations/1.json
  def update
    respond_to do |format|
      if @rooftop_allocation.update(rooftop_allocation_params)
        format.html { redirect_to @rooftop_allocation, notice: 'Rooftop allocation was successfully updated.' }
        format.json { render :show, status: :ok, location: @rooftop_allocation }
      else
        format.html { render :edit }
        format.json { render json: @rooftop_allocation.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /rooftop_allocations/1
  # DELETE /rooftop_allocations/1.json
  def destroy
    @rooftop_allocation.destroy
    respond_to do |format|
      format.html { redirect_to rooftop_allocations_url, notice: 'Rooftop allocation was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_rooftop_allocation
      @rooftop_allocation = RooftopAllocation.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def rooftop_allocation_params
      params.require(:rooftop_allocation).permit(:allocation_basis, :period, :product, :allocation)
    end
end
