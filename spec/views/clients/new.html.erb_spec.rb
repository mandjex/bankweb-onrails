require 'spec_helper'

describe "clients/new.html.erb" do
  before(:each) do
    assign(:client, stub_model(Client,
      :gender => false,
      :firstname => "MyString",
      :lastname => "MyString",
      :address => "MyString"
    ).as_new_record)
  end

  it "renders new client form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => clients_path, :method => "post" do
      assert_select "input#client_gender", :name => "client[gender]"
      assert_select "input#client_firstname", :name => "client[firstname]"
      assert_select "input#client_lastname", :name => "client[lastname]"
      assert_select "input#client_address", :name => "client[address]"
    end
  end
end
