class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  before_filter :set_university_list

  def set_university_list
  	@university_list = University.paginate(:page => params[:page], :per_page => 30)
  end
end
