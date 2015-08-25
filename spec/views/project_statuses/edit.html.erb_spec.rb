require 'rails_helper'

RSpec.describe "project_statuses/edit", type: :view do
  before(:each) do
    @project_status = assign(:project_status, ProjectStatus.create!())
  end

  it "renders the edit project_status form" do
    render

    assert_select "form[action=?][method=?]", project_status_path(@project_status), "post" do
    end
  end
end
