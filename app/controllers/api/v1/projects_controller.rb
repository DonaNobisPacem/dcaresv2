class Api::V1::ProjectsController < Api::V1::BaseController
  before_action :set_project, only: [:show]

  def index
    expose Project.all
  end

  def show
    # expose({ 
    #   project: @project, 
    #   project_components: @project.project_components,
    #   project_phases: @project.project_phases,
    #   project_images: @project.project_images
    # })
    expose @project, :include => {
      :fund_sources => { only: [:source_name ] },
      :project_components => { only: [ :id, :component_name ] },
      :project_phases => { only: [ :id, :phase_name ] },
      :project_images => { only: [ :id, :image ] }      
    }
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_project
      @project = Project.find(params[:id])
    end
end