class Api::V1::UniversitiesController < Api::V1::BaseController
  before_action :set_university, only: [:show]
  caches :index, :show, caches_for: 5.minutes

  skip_before_filter :authenticate_user_from_token
  skip_before_filter :require_authentication!

  def index
    expose University.paginate(:page => params[:page], :per_page => 10)
  end

  def show
    expose @university
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_university
      @university = University.find(params[:id])
    end
end