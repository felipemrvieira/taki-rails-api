require 'rails_helper'

RSpec.describe "Items", type: :request do
  describe "GET /items" do
    it "return http 200" do
      get items_path
      expect(response).to have_http_status(200)
    end
  end

end