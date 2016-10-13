require 'rails_helper'

RSpec.describe "project_classifications/new", type: :view do
  before(:each) do
    assign(:project_classification, ProjectClassification.new(
      :description => "MyString"
    ))
  end

  it "renders new project_classification form" do
    render

    assert_select "form[action=?][method=?]", project_classifications_path, "post" do

      assert_select "input#project_classification_description[name=?]", "project_classification[description]"
    end
  end
end
