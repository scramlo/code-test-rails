require 'rails_helper'

RSpec.describe "Members", type: :request do
  describe "GET /members" do
    it "returns status 200" do
      get members_path
      expect(response).to have_http_status(200)
    end
  end
end
