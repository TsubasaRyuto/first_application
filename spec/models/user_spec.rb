require 'rails_helper'

RSpec.describe User, type: :model do
  let(:user) { create(:user) }
  let(:graduating_class) { create(:graduating_class) }
  let(:gender) { 0 }
  let(:birthplace) { 3 }
  let(:industry) { 'example' }
  let(:company) { 'example.inc' }
  let(:useful_things) { 'test test test test'}
  let(:note) { 'note note note' }
  let(:update_user) { user.update(graduating_class_id: graduating_class, gender: gender, birthplace: birthplace, industry: industry, company: company, useful_things: useful_things, note: note) }

  context 'user' do
    context 'success' do
      it 'should be true' do
        expect(update_user).to be_truthy
      end
    end

    context 'user gender' do
      context 'presence' do
        let(:gender) { '' }
        it 'should be false becouse of gender is blank' do
          expect(update_user).to be_falsey
          expect(user.errors.messages.any?).to be_truthy
        end
      end
    end

    context 'user useful_things' do
      context 'presence' do
        let(:useful_things) { '' }
        it 'should be false becouse of usefutl_things is blank' do
          expect(update_user).to be_falsey
          expect(user.errors.messages.any?).to be_truthy
        end
        context 'length to over' do
          let(:useful_things) { 'a'*501 }
          it 'should be false becouse of useful_things is to long' do
            expect(update_user).to be_falsey
            expect(user.errors.messages.any?).to be_truthy
          end
        end
      end

      context 'user note' do
        context 'presence' do
          let(:note) { '' }
          it 'should be false becouse of note is blank' do
            expect(update_user).to be_falsey
            expect(user.errors.messages.any?).to be_truthy
          end
        end
        context 'length to over' do
          let(:note) { 'a'*501 }
          it 'should be false becouse of note is to long' do
            expect(update_user).to be_falsey
            expect(user.errors.messages.any?).to be_truthy
          end
        end
      end
    end
  end
end
