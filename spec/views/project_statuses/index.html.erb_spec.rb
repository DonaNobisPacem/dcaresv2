require 'rails_helper'

RSpec.describe "project_statuses/index", type: :view do
  before(:each) do
    assign(:project_statuses, [
      ProjectStatus.create!(),
      ProjectStatus.create!()
    ])
  end

  it "renders a list of project_statuses" do
    render
  end
end
