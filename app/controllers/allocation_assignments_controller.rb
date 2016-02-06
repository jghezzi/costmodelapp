class AllocationAssignmentsController < ApplicationController
  before_action :set_allocation_assignment, only: [:show, :edit, :update, :destroy]

  # GET /allocation_assignments
  # GET /allocation_assignments.json
  def index
    @allocation_assignments = AllocationAssignment.all
  end

  # GET /allocation_assignments/1
  # GET /allocation_assignments/1.json
  def show
  end

  # GET /allocation_assignments/new
  def new
    @allocation_assignment = AllocationAssignment.new
  end

  # GET /allocation_assignments/1/edit
  def edit
  end

  # POST /allocation_assignments
  # POST /allocation_assignments.json
  def create
    @allocation_assignment = AllocationAssignment.new(allocation_assignment_params)

    respond_to do |format|
      if @allocation_assignment.save
        format.html { redirect_to @allocation_assignment, notice: 'Allocation assignment was successfully created.' }
        format.json { render :show, status: :created, location: @allocation_assignment }
      else
        format.html { render :new }
        format.json { render json: @allocation_assignment.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /allocation_assignments/1
  # PATCH/PUT /allocation_assignments/1.json
  def update
    respond_to do |format|
      if @allocation_assignment.update(allocation_assignment_params)
        format.html { redirect_to @allocation_assignment, notice: 'Allocation assignment was successfully updated.' }
        format.json { render :show, status: :ok, location: @allocation_assignment }
      else
        format.html { render :edit }
        format.json { render json: @allocation_assignment.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /allocation_assignments/1
  # DELETE /allocation_assignments/1.json
  def destroy
    @allocation_assignment.destroy
    respond_to do |format|
      format.html { redirect_to allocation_assignments_url, notice: 'Allocation assignment was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_allocation_assignment
      @allocation_assignment = AllocationAssignment.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def allocation_assignment_params
      params.require(:allocation_assignment).permit(:vendor_name, :location_code, :allocation_method, :allocation_basis)
    end
end
