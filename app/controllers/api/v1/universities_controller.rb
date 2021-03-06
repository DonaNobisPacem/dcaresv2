class Api::V1::UniversitiesController < Api::V1::BaseController
  before_action :set_university, only: [:show]

  def index
    expose University.all, only: [:id, :university_name, :university_code]
  end

  def show
    expose Project.where( university_id: @university.id ), only: [:id, :project_name, :project_code]
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_university
      @university = University.find(params[:id])
    end
end