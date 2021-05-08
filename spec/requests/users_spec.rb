require "rails_helper"

RSpec.describe "Users", type: :request do
  describe "GET #index" do
    subject {get(users_path)}
    context "ユーザーが存在するとき" do
      before {create_list(:user, 3)}
      it "リクエストが成功する" do
        subject
        expect(response).to have_http_status(:ok)
      end

      it "nameが表示されている" do
        subject
        expect(response.body).to include(*User.pluck(:name))
      end
    end
  end
end
