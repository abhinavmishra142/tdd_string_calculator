require 'rails_helper'
 
RSpec.describe "StringCalculators", type: :request do
  describe "GET /index" do
    it "returns http success" do
      get "/"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /calculate" do
    it "returns http success" do
      get "/string_calculators/calculate", params: { numbers: "1,2,3" }
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET #calculate" do
    it "calculates the sum of valid numbers" do
      get "/string_calculators/calculate", params: { numbers: "1,2,3" }
      expect(response.body).to include("Result: 6")
    end
  end
end