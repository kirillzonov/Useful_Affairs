require 'spec_helper'

describe "affairs/index.html.erb" do
  before(:each) do
    assign(:affairs, [
      stub_model(Affair,
        :shortname => "Shortname",
        :description => "MyText",
        :user => nil,
        :category => nil
      ),
      stub_model(Affair,
        :shortname => "Shortname",
        :description => "MyText",
        :user => nil,
        :category => nil
      )
    ])
  end

  it "renders a list of affairs" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Shortname".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => nil.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
