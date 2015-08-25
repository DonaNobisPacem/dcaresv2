require 'rails_helper'

RSpec.describe "ProjectClassifications", type: :request do
  describe "GET /project_classifications" do
    it "works! (now write some real specs)" do
      get project_classifications_path
      expect(response).to have_http_status(200)
    end
  end
end
