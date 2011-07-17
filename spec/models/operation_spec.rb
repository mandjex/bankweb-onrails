# == Schema Information
#
# Table name: operations
#
#  id             :integer         not null, primary key
#  account_number :integer
#  value          :decimal(, )
#  old_balance    :decimal(, )
#  new_balance    :decimal(, )
#  ope_type       :string(255)
#  ope_date       :date
#  ope_time       :time
#  created_at     :datetime
#  updated_at     :datetime
#

require 'spec_helper'

describe Operation do
  pending "add some examples to (or delete) #{__FILE__}"
end
