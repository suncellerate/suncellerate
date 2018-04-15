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

class ProjectSerializer < ActiveModel::Serializer
  attributes :id, :description, :address1, :address2, :city, :state, :postal_code, :country, :long_lat, :seeds_required, :share_price, :seeds_count

  belongs_to :host
  has_many :seeds, counter_cache: true
  has_many :shares, through: :seeds
  has_many :accounts, through: :shares
  has_many :users, through: :users
end
