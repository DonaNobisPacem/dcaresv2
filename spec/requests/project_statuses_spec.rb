require 'rails_helper'

RSpec.describe "ProjectStatuses", type: :request do
  describe "GET /project_statuses" do
    it "works! (now write some real specs)" do
      get project_statuses_path
      expect(response).to have_http_status(200)
    end
  end
end
