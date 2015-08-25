require 'rails_helper'

RSpec.describe "fund_sources/index", type: :view do
  before(:each) do
    assign(:fund_sources, [
      FundSource.create!(),
      FundSource.create!()
    ])
  end

  it "renders a list of fund_sources" do
    render
  end
end
