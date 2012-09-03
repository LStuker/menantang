require 'spec_helper'

describe "users/edit" do
  before(:each) do
    @user = assign(:user, stub_model(User,
      :name => "MyString",
      :email => "MyString",
      :height_in_cm => "",
      :weight_in_kg => "",
      :gender => "MyString"
    ))
  end

  it "renders the edit user form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => users_path(@user), :method => "post" do
      assert_select "input#user_name", :name => "user[name]"
      assert_select "input#user_email", :name => "user[email]"
      assert_select "input#user_height_in_cm", :name => "user[height_in_cm]"
      assert_select "input#user_weight_in_kg", :name => "user[weight_in_kg]"
      assert_select "input#user_gender", :name => "user[gender]"
    end
  end
end
