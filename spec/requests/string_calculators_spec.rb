require 'rails_helper'
 
 RSpec.describe "StringCalculators", type: :request do
   describe "GET /index" do
     it "returns http success" do
       get "/string_calculators/index"
       expect(response).to have_http_status(:success)
     end
   end
 
   describe "GET /calculate" do
     it "returns http success" do
       get "/string_calculators/calculate"
       expect(response).to have_http_status(:success)
     end
   end
 
 end