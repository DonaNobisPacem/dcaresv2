class Api::V1::ProjectsController < Api::V1::BaseController
  before_action :set_project, only: [:show]
  caches :index, :show, caches_for: 5.minutes

  def index
    expose Project.paginate(:page => params[:page])
  end

  def show
    expose({ 
      project: @project, 
      project_components: @project.project_components
    })
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_project
      @project = Project.find(params[:id])
    end
end