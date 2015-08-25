require 'rails_helper'

RSpec.describe "project_classifications/show", type: :view do
  before(:each) do
    @project_classification = assign(:project_classification, ProjectClassification.create!(
      :description => "Description"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Description/)
  end
end
