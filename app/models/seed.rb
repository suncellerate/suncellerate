# == Schema Information
#
# Table name: seeds
#
#  id         :integer          not null, primary key
#  share_id   :integer
#  project_id :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Seed < ApplicationRecord
end
