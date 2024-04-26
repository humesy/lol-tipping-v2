# == Schema Information
#
# Table name: users
#
#  id                     :bigint           not null, primary key
#  email                  :string           default(""), not null
#  encrypted_password     :string           default(""), not null
#  reset_password_token   :string
#  reset_password_sent_at :datetime
#  remember_created_at    :datetime
#  created_at             :datetime         not null
#  updated_at             :datetime         not null
#  username               :string           not null
#
require 'rails_helper'

RSpec.describe User, type: :model do
  let(:user) { create(:user) }
  let(:dupe_user) { create(:user) }

  describe 'validations' do
    before { expect(user.valid?).to be_truthy }

    context 'username' do
      it 'should be present' do
        user.username = nil
        expect(user.valid?).to be_falsey
        expect(user.errors.full_messages).to eq ["Username can't be blank"]
      end

      it 'should be unique' do
        user.username = dupe_user.username
        expect(user.valid?).to be_falsey
        expect(user.errors.full_messages).to eq ["Username has already been taken"]
      end
    end
  end
end
