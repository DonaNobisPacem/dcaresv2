class Api::V1::ProjectPhasesController < Api::V1::BaseController
  before_action :set_project_phase, only: [:show]

  def index
    expose ProjectPhase.paginate(:page => params[:page])
  end

  def show
    expose @project_phase
  end


  private
    # Use callbacks to share common setup or constraints between actions.
    def set_project_phase
      @project_phase = ProjectPhase.find(params[:id])
    end
end