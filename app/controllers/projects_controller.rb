  class ProjectsController < ApplicationController
  before_action :set_project, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, except: [:index, :show]
  # GET /projects
  # GET /projects.json
  def index
    @projects = Project.paginate(:page => params[:page], :per_page => 10)
  end

  # GET /projects/1
  # GET /projects/1.json
  def show
    @university = University.find( @project.university_id )
    @project_images = @project.project_images.paginate(:page => params[:page], :per_page => 9)
    @project_components = @project.project_components.paginate(:page => params[:page], :per_page => 5)
    @project_phases = @project.project_phases.paginate(:page => params[:page], :per_page => 5)
  end

  # GET /projects/new
  def new
    @project = Project.new    
    @project.funds.build
    @project_image = @project.project_images.build
  end

  # GET /projects/1/edit
  def edit
    @project.funds.build unless @project.funds.count > 0
    @project_image = @project.project_images.build unless @project.project_images.count > 0
  end

  # POST /projects
  # POST /projects.json
  def create
    @project = Project.new(project_params)

    respond_to do |format|
      if @project.save
        if params[:project_images]
          params[:project_images].each do |a|
            unless @project.project_images.count > 15
              @project_image = @project.project_images.create(:image => a, :project_id => @project.id)
            end
          end
        end
        format.html { redirect_to @project, notice: 'Project was successfully created.' }
        format.json { render :show, status: :created, location: @project }
      else
        format.html { render :new }
        format.json { render json: @project.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /projects/1
  # PATCH/PUT /projects/1.json
  def update
    respond_to do |format|
      if @project.update(project_params)
        if params[:project_images]
          params[:project_images].each do |a|
            unless @project.project_images.count > 15
              @project_image = @project.project_images.create(:image => a, :project_id => @project.id)
            end
          end
        end
        format.html { redirect_to @project, notice: 'Project was successfully updated.' }
        format.json { render :show, status: :ok, location: @project }
      else
        format.html { render :edit }
        format.json { render json: @project.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /projects/1
  # DELETE /projects/1.json
  def destroy
    @redirect_url = University.find( @project.university_id )
    @project.destroy
    respond_to do |format|
      format.html { redirect_to @redirect_url, notice: 'Project was successfully deleted.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_project
      @project = Project.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def project_params
      params.require(:project).permit(:university_id, :project_name, :project_code, :description, :expected_outcome, :end_user, :percent_accomplishment, :percent_accomplishment_by, :remarks, :has_components, :has_phases, :bidding_contractor, :bidding_number, :bidding_preprocurement, :bidding_prebidding, :bidding_bidding, :bidding_postquali, :bidding_award, :bidding_purchase, :bidding_proceed, :bidding_remarks, :financial_source, :financial_budget, :financial_contract_price, :financial_actual_cost, :financial_variation, :financial_remarks, :timeline_target_start, :timeline_target_end, :timeline_actual_start, :timeline_actual_end, :timeline_duration, :timeline_extension, :timeline_remarks, :status, :classification, :completed_by, :fund_source_ids => [], project_images_attributes: [ :id, :project_id, :image, :description, :_destroy], funds_attributes: [ :id, :fund_source, :budget, :_destroy] )
    end
end


