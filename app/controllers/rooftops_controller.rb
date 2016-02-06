class RooftopsController < ApplicationController
  before_action :set_rooftop, only: [:show, :edit, :update, :destroy]

  # GET /rooftops
  # GET /rooftops.json
  def index
    @rooftops = Rooftop.all
  end

  def custom_allocation
    @rooftops = Rooftop.uniq.pluck(:product)
    start_date = Date.parse('2015-01-01')
    end_date = Date.today.beginning_of_month
    number_of_months = (end_date.year*12+end_date.month)-(start_date.year*12+start_date.month)
    @dates = number_of_months.times.each_with_object([]) do |count, array|
    array << [start_date.beginning_of_month + count.months,
            end_date.beginning_of_month + count.months]
    @array = array
end
  end

  # GET /rooftops/1
  # GET /rooftops/1.json
  def show
  end

  # GET /rooftops/new
  def new
    @rooftop = Rooftop.new
  end

  # GET /rooftops/1/edit
  def edit
  end

  # POST /rooftops
  # POST /rooftops.json
  def create
    @rooftop = Rooftop.new(rooftop_params)

    respond_to do |format|
      if @rooftop.save
        format.html { redirect_to @rooftop, notice: 'Rooftop was successfully created.' }
        format.json { render :show, status: :created, location: @rooftop }
      else
        format.html { render :new }
        format.json { render json: @rooftop.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /rooftops/1
  # PATCH/PUT /rooftops/1.json
  def update
    respond_to do |format|
      if @rooftop.update(rooftop_params)
        format.html { redirect_to @rooftop, notice: 'Rooftop was successfully updated.' }
        format.json { render :show, status: :ok, location: @rooftop }
      else
        format.html { render :edit }
        format.json { render json: @rooftop.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /rooftops/1
  # DELETE /rooftops/1.json
  def destroy
    @rooftop.destroy
    respond_to do |format|
      format.html { redirect_to rooftops_url, notice: 'Rooftop was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_rooftop
      @rooftop = Rooftop.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def rooftop_params
      params.require(:rooftop).permit(:period, :product, :rooftops)
    end
end
