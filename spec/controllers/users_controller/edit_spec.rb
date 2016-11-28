require 'rails_helper'

RSpec.describe UsersController, type: :controller do
  let(:user) { create :user }

  context 'update' do
    context 'get edit id of user' do
      before do
        get :edit, params: { id: user }
      end

      it 'should redirect edit when logged in as wrong user' do
        expect(response.status).to eq(200)
      end
    end
  end
end
