# == Schema Information
#
# Table name: graduating_classes
#
#  id               :integer          not null, primary key
#  graduating_class :string(255)      not null
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#

class GraduatingClass < ApplicationRecord
  
  has_many :user
end
