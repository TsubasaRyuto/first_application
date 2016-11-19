# == Schema Information
#
# Table name: users
#
#  id                  :integer          not null, primary key
#  graduating_class_id :integer          not null
#  provider            :string(255)      not null
#  uid                 :string(255)      not null
#  name                :string(255)      not null
#  nickname            :string(255)      not null
#  email               :string(255)      not null
#  gender              :string(255)      not null
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
#  index_users_on_uid                  (uid) UNIQUE
#

class User < ApplicationRecord
end
