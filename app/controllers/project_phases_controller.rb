class ProjectPhasesController < ApplicationController
  before_action :set_project_phase, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!
  # GET /project_phases
  # GET /project_phases.json
  def index
    @project = Project.find(params[:project_id])
    @project_phases = @project.project_phases.paginate(:page => params[:page], :per_page => 10)
  end

  # GET /project_phases/1
  # GET /project_phases/1.json
  def show
  end

  # GET /project_phases/new
  def new
   @project_phase = ProjectPhase.new(:project_id => params[:project_id])
  end

  # GET /project_phases/1/edit
  def edit
  end

  # POST /project_phases
  # POST /project_phases.json
  def create
    @project_phase = ProjectPhase.new(project_phase_params)

    respond_to do |format|
      if @project_phase.save
        format.html { redirect_to project_project_phase_path(@project_phase.project, @project_phase), notice: 'Project phase was successfully created.' }
        format.json { render :show, status: :created, location: @project_phase }
      else
        format.html { render :new }
        format.json { render json: @project_phase.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /project_phases/1
  # PATCH/PUT /project_phases/1.json
  def update
    respond_to do |format|
      if @project_phase.update(project_phase_params)
        format.html { redirect_to project_project_phase_path(@project_phase.project, @project_phase), notice: 'Project phase was successfully updated.' }
        format.json { render :show, status: :ok, location: @project_phase }
      else
        format.html { render :edit }
        format.json { render json: @project_phase.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /project_phases/1
  # DELETE /project_phases/1.json
  def destroy
    @redirect_url = @project_phase.project
    @project_phase.destroy
    respond_to do |format|
      format.html { redirect_to project_path(@redirect_url), notice: 'Project phase was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_project_phase
      @project_phase = ProjectPhase.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def project_phase_params
      params.require(:project_phase).permit(:project_id, :phase_name, :description, :expected_outcome, :end_user, :percent_accomplishment, :percent_accomplishment_by, :remarks, :has_components, :has_phases, :bidding_contractor, :bidding_number, :bidding_award, :bidding_proceed, :bidding_remarks, :financial_source, :financial_budget, :financial_contract_price, :financial_actual_cost, :financial_variation, :financial_remarks, :timeline_target_start, :timeline_target_end, :timeline_actual_start, :timeline_actual_end, :timeline_duration, :timeline_extension, :timeline_remarks, :status, :completed_by, :fund_source_ids => [])
    end
end
