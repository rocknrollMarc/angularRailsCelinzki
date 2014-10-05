require 'rails_helper'

RSpec.describe "widgets/index", :type => :view do
  before(:each) do
    assign(:widgets, [
      Widget.create!(
        :name => "Name",
        :price => 1
      ),
      Widget.create!(
        :name => "Name",
        :price => 1
      )
    ])
  end

  it "renders a list of widgets" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
  end
end
