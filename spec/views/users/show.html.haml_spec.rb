require 'spec_helper'

describe "users/show" do
  before(:each) do
    @user = assign(:user, stub_model(User,
      :nickname => "Nickname",
      :age => 1,
      :city => "City",
      :about => "About",
      :interests => "Interests"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Nickname/)
    rendered.should match(/1/)
    rendered.should match(/City/)
    rendered.should match(/About/)
    rendered.should match(/Interests/)
  end
end
