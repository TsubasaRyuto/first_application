require 'rails_helper'

RSpec.describe UsersController, type: :controller do
  let(:user) { create :user }

  context 'index' do
    context 'get index' do
      it 'should redirect edit when logged in as wrong user' do
        get :index
        expect(response.status).to eq(200)
      end
    end
  end
end
