require 'spec_helper'

describe "accounts/index.html.erb" do
  before(:each) do
    assign(:accounts, [
      stub_model(Account,
        :balance => "9.99"
      ),
      stub_model(Account,
        :balance => "9.99"
      )
    ])
  end

  it "renders a list of accounts" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
  end
end
