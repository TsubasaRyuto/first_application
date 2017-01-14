require 'rails_helper'

RSpec.describe UsersController, type: :controller do
  let(:user) { create :user }

  context 'update' do
    context 'patch update user' do
      let(:graduating_class) { create :graduating_class }
      let(:gender) { :male }
      let(:birthplace) { :Aomori }
      let(:industry) { 'test' }
      let(:company) { 'test' }
      let(:useful_things) { 'test test test' }
      let(:note) { 'test test test test' }

      it 'should update' do
        patch :update, params: { id: user, user: { gender: gender, graduating_class_id: graduating_class, birthplace: birthplace, industry: industry, company: company, useful_things: useful_things, note: note } }
        expect(response).to redirect_to user_path
      end
    end

    context 'patch update user invalid' do
      let(:graduating_class) { create :graduating_class }
      let(:gender) { :male }
      let(:birthplace) { :Aomori }

      it 'should not update' do
        patch :update, params: { id: user, user: { gender: gender, birthplace: birthplace } }
        expect(response).to render_template(:tedit)
      end
    end
  end
end
