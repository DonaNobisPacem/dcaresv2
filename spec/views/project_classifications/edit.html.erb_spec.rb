require 'rails_helper'

RSpec.describe "project_classifications/edit", type: :view do
  before(:each) do
    @project_classification = assign(:project_classification, ProjectClassification.create!(
      :description => "MyString"
    ))
  end

  it "renders the edit project_classification form" do
    render

    assert_select "form[action=?][method=?]", project_classification_path(@project_classification), "post" do

      assert_select "input#project_classification_description[name=?]", "project_classification[description]"
    end
  end
end
