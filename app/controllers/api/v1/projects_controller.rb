class Api::V1::ProjectsController < Api::V1::BaseController
  before_action :set_project, only: [:show]

  def index
    expose Project.all, only: [:id, :project_name, :project_code]
  end

  def show
    # expose({ 
    #   project: @project, 
    #   project_components: @project.project_components,
    #   project_phases: @project.project_phases,
    #   project_images: @project.project_images
    # })
  
    expose @project, :include => {
      :funds => { only: [ methods: :fund_source ], methods: :source_name },
      :project_components => { only: [ :id, :component_name ] },
      :project_phases => { only: [ :id, :phase_name ] }      
    }
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_project
      @project = Project.find(params[:id])
    end
end