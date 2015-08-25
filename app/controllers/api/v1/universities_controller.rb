class Api::V1::UniversitiesController < Api::V1::BaseController
  before_action :set_university, only: [:show]

  def index
    expose University.all
  end

  def show
    expose({
      university: @university,
      projects: Project.where( university_id: @university.id )
    })
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_university
      @university = University.find(params[:id])
    end
end