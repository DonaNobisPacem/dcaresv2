class Api::V1::ProjectComponentsController < Api::V1::BaseController
  before_action :set_project, only: [:show]
  respond_to :json, :xml

  def index
    @project = Project.find(params[:project_id])
    @project_components = @project.project_components.paginate(:page => params[:page], :per_page => 10)
    responds_with(@project_components)
  end

  def show
    respond_with(@project_component)
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_project
      @project_component = ProjectComponent.find(params[:id])
    end
end