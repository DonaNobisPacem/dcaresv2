class Api::V1::ProjectPhasesController < Api::V1::BaseController
  before_action :set_project, only: [:show]
  respond_to :json, :xml

  def index
    @project = Project.find(params[:project_id])
    @project_phases = @project.project_phases.paginate(:page => params[:page], :per_page => 10)
    responds_with(@project_phases)
  end

  def show
    respond_with(@project_phase)
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_project
      @project_phase = ProjectPhase.find(params[:id])
    end
end