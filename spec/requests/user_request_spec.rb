require 'rails_helper'

RSpec.describe "Users", type: :request do
  describe "GET /users" do
    it "return http 200" do
      get users_path
      expect(response).to have_http_status(200)
    end
  end
end
