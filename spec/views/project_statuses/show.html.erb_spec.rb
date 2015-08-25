require 'rails_helper'

RSpec.describe "project_statuses/show", type: :view do
  before(:each) do
    @project_status = assign(:project_status, ProjectStatus.create!())
  end

  it "renders attributes in <p>" do
    render
  end
end
