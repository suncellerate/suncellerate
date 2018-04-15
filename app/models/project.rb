# == Schema Information
#
# Table name: projects
#
#  id             :integer          not null, primary key
#  description    :string
#  host_id        :integer
#  address1       :string
#  address2       :string
#  city           :string
#  state          :string
#  postal_code    :integer
#  country        :string
#  long_lat       :geography({:srid point, 4326
#  seeds_required :integer
#  share_price    :integer
#  seeds_count    :integer
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#

class Project < ApplicationRecord
  belongs_to :host
  has_many :seeds, counter_cache: true
  has_many :shares, through: :seeds
  has_many :accounts, through: :shares
  has_many :users, through: :users

  validates_presence_of :description

  before_validation :ensure_host

  private

  def ensure_host
    unless host_id
      self.host = Host.create(name: 'nice place')
    end
  end
end
