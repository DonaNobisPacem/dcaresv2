require 'rails_helper'

RSpec.describe "project_classifications/index", type: :view do
  before(:each) do
    assign(:project_classifications, [
      ProjectClassification.create!(
        :description => "Description"
      ),
      ProjectClassification.create!(
        :description => "Description"
      )
    ])
  end

  it "renders a list of project_classifications" do
    render
    assert_select "tr>td", :text => "Description".to_s, :count => 2
  end
end
