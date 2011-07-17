# == Schema Information
#
# Table name: clients
#
#  id             :integer         not null, primary key
#  gender         :boolean
#  firstname      :string(255)
#  lastname       :string(255)
#  address        :string(255)
#  account_number :integer
#  created_at     :datetime
#  updated_at     :datetime
#

class Client < ActiveRecord::Base
end
