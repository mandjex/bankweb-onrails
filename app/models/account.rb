# == Schema Information
#
# Table name: accounts
#
#  id         :integer         not null, primary key
#  number     :integer
#  balance    :decimal(10, 2)  default(0.0)
#  created_at :datetime
#  updated_at :datetime
#

class Account < ActiveRecord::Base
end
