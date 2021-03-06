# == Schema Information
#
# Table name: hosts
#
#  id         :integer          not null, primary key
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class HostSerializer < ActiveModel::Serializer
  attributes :name
  has_many :projects
end
