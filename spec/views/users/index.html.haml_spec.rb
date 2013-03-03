require 'spec_helper'

describe "users/index" do
  before(:each) do
    assign(:users, [
      stub_model(User,
        :nickname => "Nickname",
        :age => 1,
        :city => "City",
        :about => "About",
        :interests => "Interests"
      ),
      stub_model(User,
        :nickname => "Nickname",
        :age => 1,
        :city => "City",
        :about => "About",
        :interests => "Interests"
      )
    ])
  end

  it "renders a list of users" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Nickname".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => "City".to_s, :count => 2
    assert_select "tr>td", :text => "About".to_s, :count => 2
    assert_select "tr>td", :text => "Interests".to_s, :count => 2
  end
end
