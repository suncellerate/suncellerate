# == Schema Information
#
# Table name: profiles
#
#  id            :integer          not null, primary key
#  user_id       :integer
#  first_name    :string
#  last_name     :string
#  address1      :string
#  address2      :string
#  city          :string
#  state         :string
#  postal_code   :integer
#  country       :string
#  phone_number  :string
#  annual_income :integer
#  gender        :string
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#

class Profile < ApplicationRecord
end
