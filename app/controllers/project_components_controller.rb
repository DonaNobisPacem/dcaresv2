class ProjectComponentsController < ApplicationController
  before_action :set_project_component, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, except: [:index, :show]
  # GET /project_components
  # GET /project_components.json
  def index
    @project = Project.find(params[:project_id])
    @project_components = @project.project_components.paginate(:page => params[:page], :per_page => 10)
  end

  # GET /project_components/1
  # GET /project_components/1.json
  def show
  end

  # GET /project_components/new
  def new
    @project_component = ProjectComponent.new(:project_id => params[:project_id])
    @project_component.funds.build
  end

  # GET /project_components/1/edit
  def edit
    @project_component.funds.build unless @project_component.funds.count > 0
  end

  # POST /project_components
  # POST /project_components.json
  def create
    @project_component = ProjectComponent.new(project_component_params)

    respond_to do |format|
      if @project_component.save
        format.html { redirect_to project_project_component_path(@project_component.project, @project_component), notice: 'Project component was successfully created.' }
        format.json { render :show, status: :created, location: @project_component }
      else
        format.html { render :new }
        format.json { render json: @project_component.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /project_components/1
  # PATCH/PUT /project_components/1.json
  def update
    respond_to do |format|
      if @project_component.update(project_component_params)
        format.html { redirect_to project_project_component_path(@project_component.project, @project_component), notice: 'Project component was successfully updated.' }
        format.json { render :show, status: :ok, location: @project_component }
      else
        format.html { render :edit }
        format.json { render json: @project_component.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /project_components/1
  # DELETE /project_components/1.json
  def destroy
    @redirect_url = @project_component.project
    @project_component.destroy
    respond_to do |format|
      format.html { redirect_to project_path(@redirect_url), notice: 'Project component was successfully deleted.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_project_component
      @project_component = ProjectComponent.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def project_component_params
      params.require(:project_component).permit(:project_id, :component_name, :description, :expected_outcome, :end_user, :percent_accomplishment, :percent_accomplishment_by, :remarks, :has_components, :has_phases, :bidding_contractor, :bidding_number, :bidding_preprocurement, :bidding_prebidding, :bidding_bidding, :bidding_postquali, :bidding_award, :bidding_purchase, :bidding_proceed, :bidding_remarks, :financial_source, :financial_budget, :financial_contract_price, :financial_actual_cost, :financial_variation, :financial_remarks, :timeline_target_start, :timeline_target_end, :timeline_actual_start, :timeline_actual_end, :timeline_duration, :timeline_extension, :timeline_remarks, :status, :classification, :completed_by, :fund_source_ids => [], funds_attributes: [ :id, :fund_source, :budget, :_destroy] )
    end
end