require 'rails_helper'

RSpec.describe "FundSources", type: :request do
  describe "GET /fund_sources" do
    it "works! (now write some real specs)" do
      get fund_sources_path
      expect(response).to have_http_status(200)
    end
  end
end
