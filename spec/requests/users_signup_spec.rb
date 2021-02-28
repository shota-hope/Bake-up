require 'rails_helper'

RSpec.describe "ユーザー登録", type: :request do
  before do
    get signup_path
  end

  it "正常なレスポンスを返すこと" do
    expect(response).to be_success
    expect(response).to have_http_status "200"
  end
end
#   describe "GET /new" do
#     it "returns http success" do
#       get "/users/new"
#       expect(response).to have_http_status(:success)
#     end
#   end

#   describe "GET /show" do
#     it "returns http success" do
#       get "/users/show"
#       expect(response).to have_http_status(:success)
#     end
#   end

#   describe "GET /index" do
#     it "returns http success" do
#       get "/users/index"
#       expect(response).to have_http_status(:success)
#     end
#   end

# end
