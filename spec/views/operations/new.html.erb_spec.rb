require 'spec_helper'

describe "operations/new.html.erb" do
  before(:each) do
    assign(:operation, stub_model(Operation,
      :account_number => 1,
      :value => "9.99",
      :old_balance => "9.99",
      :new_balance => "9.99",
      :ope_type => "MyString"
    ).as_new_record)
  end

  it "renders new operation form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => operations_path, :method => "post" do
      assert_select "input#operation_account_number", :name => "operation[account_number]"
      assert_select "input#operation_value", :name => "operation[value]"
      assert_select "input#operation_old_balance", :name => "operation[old_balance]"
      assert_select "input#operation_new_balance", :name => "operation[new_balance]"
      assert_select "input#operation_ope_type", :name => "operation[ope_type]"
    end
  end
end
