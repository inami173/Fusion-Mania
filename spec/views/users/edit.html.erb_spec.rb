require 'spec_helper'

describe "users/edit" do
  before(:each) do
    @user = assign(:user, stub_model(User,
      :grade => 1,
      :name => "MyString",
      :gender => 1,
      :part => "MyString",
      :department => "MyString",
      :inst => "MyString",
      :favorite => "MyText",
      :contact => "MyText",
      :admin => false
    ))
  end

  it "renders the edit user form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", user_path(@user), "post" do
      assert_select "input#user_grade[name=?]", "user[grade]"
      assert_select "input#user_name[name=?]", "user[name]"
      assert_select "input#user_gender[name=?]", "user[gender]"
      assert_select "input#user_part[name=?]", "user[part]"
      assert_select "input#user_department[name=?]", "user[department]"
      assert_select "input#user_inst[name=?]", "user[inst]"
      assert_select "textarea#user_favorite[name=?]", "user[favorite]"
      assert_select "textarea#user_contact[name=?]", "user[contact]"
      assert_select "input#user_admin[name=?]", "user[admin]"
    end
  end
end
