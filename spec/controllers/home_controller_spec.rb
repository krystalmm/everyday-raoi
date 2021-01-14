require 'rails_helper'

RSpec.describe HomeController, type: :controller do

    describe "#index" do
        # 正常にレスポンスを返すこと
        it "responds successfully" do
            get :index
            aggregate_failures do
                expect(response).to be_successful
                expect(response).to have_http_status "200"
            end
        end
    end
end
