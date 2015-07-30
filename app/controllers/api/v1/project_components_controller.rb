class Api::V1::ProjectComponentsController < Api::V1::BaseController
  before_action :set_project_component, only: [:show]
  caches :index, :show, caches_for: 5.minutes

  def index
    expose ProjectComponent.paginate(:page => params[:page])
  end

  def show
    expose @project_component
  end


  private
    # Use callbacks to share common setup or constraints between actions.
    def set_project_component
      @project_component = ProjectComponent.find(params[:id])
    end
end