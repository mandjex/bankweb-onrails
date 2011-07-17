require 'spec_helper'

describe "clients/index.html.erb" do
  before(:each) do
    assign(:clients, [
      stub_model(Client,
        :gender => false,
        :firstname => "Firstname",
        :lastname => "Lastname",
        :address => "Address"
      ),
      stub_model(Client,
        :gender => false,
        :firstname => "Firstname",
        :lastname => "Lastname",
        :address => "Address"
      )
    ])
  end

  it "renders a list of clients" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => false.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Firstname".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Lastname".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Address".to_s, :count => 2
  end
end
