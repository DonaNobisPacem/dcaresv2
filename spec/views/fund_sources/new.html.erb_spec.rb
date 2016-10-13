require 'rails_helper'

RSpec.describe "fund_sources/new", type: :view do
  before(:each) do
    assign(:fund_source, FundSource.new())
  end

  it "renders new fund_source form" do
    render

    assert_select "form[action=?][method=?]", fund_sources_path, "post" do
    end
  end
end
