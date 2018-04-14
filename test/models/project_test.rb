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

require 'test_helper'

class ProjectTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
