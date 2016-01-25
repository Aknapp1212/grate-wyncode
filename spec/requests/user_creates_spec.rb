require 'rails_helper'

RSpec.describe "UserCreates", type: :request do
  describe "GET /user_creates" do
    it "works! (now write some real specs)" do
      get user_creates_path
      expect(response).to have_http_status(200)
    end
  end
end
