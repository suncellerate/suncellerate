require 'rails_helper'

RSpec.describe "Projects", type: :request do
  describe "GET /projects" do
    it "works! (now write some real specs)" do
      headers = { "CONTENT_TYPE" => "application/json" }
      get projects_path, nil, headers
      expect(response).to have_http_status(200)
    end
  end
end
