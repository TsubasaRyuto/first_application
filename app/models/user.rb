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
#  gender              :integer
#  url                 :string(255)
#  image_url           :string(255)
#  birthplace          :integer
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
  belongs_to :graduating_class, optional: true

  prefectures = {
    Hokkaido: 1, Aomori: 2, Iwate: 3, Miyagi: 4, Akita: 5, Yamagata: 6, Fukushima: 7,
    Ibaraki: 8, Tochigi: 9, Gunma: 10, Saitama: 11, Chiba: 12, Tokyo: 12, Kanagawa: 13, Niigata: 15,
    Toyama: 16, Ishikawa: 17, Fukui: 18, Yamanashi: 19, Nagano: 20, Gifu: 21, Shizuoka: 22, Aichi: 23,
    Mie: 24, Shiga: 25, Kyoto: 26, Osaka: 27, Hyogo: 28, Nara: 29, Wakayama: 30, Tottori: 31, Shimane: 32,
    Okayama: 33, Hiroshima: 34, Yamaguchi: 35, Tokushima: 36, Kagawa: 37, Ehime: 38, Kochi: 39, Fukuoka: 40, Saga: 41,
    Nagasaki: 42, Kumamoto: 43, Oita: 44, Miyazaki: 45, Kagoshima: 46, Okinawa: 47
  }

  enum gender: [:male, :female, :other]
  enum birthplace: prefectures

  validates :gender, presence: true, on: :update
  validates :useful_things, length: {maximum: 500}, presence: true, on: :update
  validates :note, length: { maximum: 500 }, presence: true, on: :update
  validates :graduating_class, presence: true, on: :updae

  scope :get_by_graduating_class, -> (graduating_class_id) { where(graduating_class_id: graduating_class_id) }

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
