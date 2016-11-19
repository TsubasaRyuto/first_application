# == Schema Information
#
# Table name: users
#
#  id                  :integer          not null, primary key
#  graduating_class_id :integer
#  provider            :string(255)      not null
#  uid                 :string(255)      not null
#  name                :string(255)      not null
#  nickname            :string(255)
#  email               :string(255)
#  gender              :string(255)
#  url                 :string(255)
#  image_url           :string(255)
#  birthplace          :string(255)
#  industry            :string(255)
#  company             :string(255)
#  useful_things       :text(65535)
#  note                :text(65535)
#  created_at          :datetime         not null
#  updated_at          :datetime         not null
#
# Indexes
#
#  index_users_on_graduating_class_id  (graduating_class_id)
#  index_users_on_provider_and_uid     (provider,uid) UNIQUE
#

class User < ApplicationRecord
  def self.find_orcreate_from_auth_hash(auth_hash)
    provider = auth_hash[:provider]
    uid = auth_hash[:uid]
    name = auth_hash[:info][:name]
    nickname = auth_hash[:extra][:raw_info][:user_name]
    email = auth_hash[:info][:email]
    gender = auth_hash[:extra][:raw_info][:gender]
    url = auth_hash[:extra][:raw_info][:link]
    image_url = auth_hash[:info][:image]

    User.find_or_create_by(provider: provider, uid: uid) do |user|
      user.name = name
      user.nickname = nickname
      user.email = email
      user.gender = gender
      user.url = url
      user.image_url = image_url
    end
  end
end
