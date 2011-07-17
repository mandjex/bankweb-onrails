require 'spec_helper'

describe "operations/index.html.erb" do
  before(:each) do
    assign(:transactions, [
      stub_model(Operation,
        :account_number => 1,
        :value => "9.99",
        :old_balance => "9.99",
        :new_balance => "9.99",
        :ope_type => "Ope Type"
      ),
      stub_model(Operation,
        :account_number => 1,
        :value => "9.99",
        :old_balance => "9.99",
        :new_balance => "9.99",
        :ope_type => "Ope Type"
      )
    ])
  end

  it "renders a list of operations" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Ope Type".to_s, :count => 2
  end
end
