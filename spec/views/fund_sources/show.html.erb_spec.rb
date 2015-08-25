require 'rails_helper'

RSpec.describe "fund_sources/show", type: :view do
  before(:each) do
    @fund_source = assign(:fund_source, FundSource.create!())
  end

  it "renders attributes in <p>" do
    render
  end
end
