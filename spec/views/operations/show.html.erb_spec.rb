require 'spec_helper'

describe "operations/show.html.erb" do
  before(:each) do
    @operation = assign(:operation, stub_model(Operation,
      :account_number => 1,
      :value => "9.99",
      :old_balance => "9.99",
      :new_balance => "9.99",
      :ope_type => "Ope Type"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/9.99/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/9.99/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/9.99/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Ope Type/)
  end
end
