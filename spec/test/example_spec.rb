require "rails_helper"

describe "The integer i" do
  i = 1

  it "should be 1" do
    i.should == 1
  end

  it "should larger than 0" do
    i.should > 0
  end

  it "should be 2" do
    i = i + 1
    expect(i).to be 2
  end

end
