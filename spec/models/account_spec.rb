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

require 'spec_helper'

describe Account do
  pending "add some examples to (or delete) #{__FILE__}"
end
