# == Schema Information
#
# Table name: hosts
#
#  id         :integer          not null, primary key
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Host < ApplicationRecord
  has_many :projects
end
