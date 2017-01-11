require 'rails_helper'

RSpec.describe SessionsController, type: :controller do
  describe '#auth_failure' do
    it "returns http 500 error" do
      get :auth_failure
      expect(response.status).to eq(500)
    end
  end
end
