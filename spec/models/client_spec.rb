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

require 'spec_helper'

describe Client do
  pending "add some examples to (or delete) #{__FILE__}"
end
