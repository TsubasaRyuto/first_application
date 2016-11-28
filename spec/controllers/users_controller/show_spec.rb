require 'rails_helper'

RSpec.describe UsersController, type: :controller do
  let(:user) { create :user }
  let(:graduating_class) { create :graduating_class }
  let(:gender) { :male }
  let(:birthplace) { :Aomori }
  let(:industry) { 'test' }
  let(:company) { 'test' }
  let(:useful_things) { 'test test test' }
  let(:note) { 'test test test test' }
  let(:user_update) { user.update(gender: gender,
                                  graduating_class_id: graduating_class,
                                  birthplace: birthplace,
                                  industry: industry,
                                  company: company,
                                  useful_things: useful_things,
                                  note: note
                      ) }

  context 'show' do
    context 'get show' do
      it 'should get show' do
        get :show, params: { id: user }
        expect(response.status).to eq(200)
      end
    end
  end
end
