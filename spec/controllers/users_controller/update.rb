require 'rails_helper'

RSpec.describe UsersController, type: :controller do
  let(:user) { create :user }

  context 'update' do
    context 'get edit id of user' do
    before do
      get :edit, params: { id: user }
    end

    it 'should redirect edit when logged in as wrong user' do
      expect(flash).to be_empty
      expect(response).to redirect_to 200
    end

    context 'patch update user' do
      before do
        
      end
    end
  end
end
