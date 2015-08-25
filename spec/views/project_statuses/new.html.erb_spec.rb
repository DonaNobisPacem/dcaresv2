require 'rails_helper'

RSpec.describe "project_statuses/new", type: :view do
  before(:each) do
    assign(:project_status, ProjectStatus.new())
  end

  it "renders new project_status form" do
    render

    assert_select "form[action=?][method=?]", project_statuses_path, "post" do
    end
  end
end
