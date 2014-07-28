require 'spec_helper'

describe "users/show" do
  before(:each) do
    @user = assign(:user, stub_model(User,
      :grade => 1,
      :name => "Name",
      :gender => 2,
      :part => "Part",
      :department => "Department",
      :inst => "Inst",
      :favorite => "MyText",
      :contact => "MyText",
      :admin => false
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    rendered.should match(/Name/)
    rendered.should match(/2/)
    rendered.should match(/Part/)
    rendered.should match(/Department/)
    rendered.should match(/Inst/)
    rendered.should match(/MyText/)
    rendered.should match(/MyText/)
    rendered.should match(/false/)
  end
end
