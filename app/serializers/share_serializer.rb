# == Schema Information
#
# Table name: shares
#
#  id         :integer          not null, primary key
#  account_id :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class ShareSerializer < ActiveModel::Serializer
  belongs_to :account
  has_one :seed
  has_one :project, through: :seed
end
