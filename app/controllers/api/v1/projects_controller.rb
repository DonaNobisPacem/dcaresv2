class Api::V1::ProjectsController < Api::V1::BaseController
  before_action :set_project, only: [:show]
  respond_to :json, :xml

  def index
    @projects = Project.all
    respond_with(@projects)
  end

  def show
    respond_with(@project)
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_project
      @project = Project.find(params[:id])
    end
end