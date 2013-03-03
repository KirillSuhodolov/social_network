require 'spec_helper'

describe "users/new" do
  before(:each) do
    assign(:user, stub_model(User,
      :nickname => "MyString",
      :age => 1,
      :city => "MyString",
      :about => "MyString",
      :interests => "MyString"
    ).as_new_record)
  end

  it "renders new user form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", users_path, "post" do
      assert_select "input#user_nickname[name=?]", "user[nickname]"
      assert_select "input#user_age[name=?]", "user[age]"
      assert_select "input#user_city[name=?]", "user[city]"
      assert_select "input#user_about[name=?]", "user[about]"
      assert_select "input#user_interests[name=?]", "user[interests]"
    end
  end
end
