require 'rails_helper'

RSpec.describe "fund_sources/edit", type: :view do
  before(:each) do
    @fund_source = assign(:fund_source, FundSource.create!())
  end

  it "renders the edit fund_source form" do
    render

    assert_select "form[action=?][method=?]", fund_source_path(@fund_source), "post" do
    end
  end
end
