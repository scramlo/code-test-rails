require 'rails_helper'

RSpec.describe "Members", type: :request do
  describe "GET /members" do
    it "returns status 200" do
      get members_path
      expect(response).to have_http_status(200)
    end

    it "returns a list of members" do
      create_list(:member, 10)
      get members_path
      member_list = JSON.parse(response.body)
      expect(member_list.size).to eq(10)
    end

    it "returns member subscription information" do
      create_list(:member, 10)
      get members_path
      member_list = JSON.parse(response.body)
      expect(member_list[0]['subscription']).to be
    end
  end
end
