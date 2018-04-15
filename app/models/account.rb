# == Schema Information
#
# Table name: accounts
#
#  id           :integer          not null, primary key
#  shares_count :integer
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#

class Account < ApplicationRecord
  has_many :users
  has_many :shares, counter_cache: true
  has_many :seeds, through: :shares
  has_many :projects, through: :seeds
end
