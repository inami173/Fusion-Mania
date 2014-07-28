require 'spec_helper'

describe "users/index" do
  before(:each) do
    assign(:users, [
      stub_model(User,
        :grade => 1,
        :name => "Name",
        :gender => 2,
        :part => "Part",
        :department => "Department",
        :inst => "Inst",
        :favorite => "MyText",
        :contact => "MyText",
        :admin => false
      ),
      stub_model(User,
        :grade => 1,
        :name => "Name",
        :gender => 2,
        :part => "Part",
        :department => "Department",
        :inst => "Inst",
        :favorite => "MyText",
        :contact => "MyText",
        :admin => false
      )
    ])
  end

  it "renders a list of users" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => "Part".to_s, :count => 2
    assert_select "tr>td", :text => "Department".to_s, :count => 2
    assert_select "tr>td", :text => "Inst".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
  end
end
