class Api::V1::UniversitiesController < Api::V1::BaseController
  before_action :set_university, only: [:show]
  caches :index, :show, caches_for: 5.minutes

  def index
    expose University.paginate(:page => params[:page], :per_page => 10)
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