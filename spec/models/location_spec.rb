require 'spec_helper'

describe Location, :type => :model  do

  describe "creation" do
    context "valid attributes" do
      it "should be valid" do
        location = FactoryGirl.build(:location)
        location.should be_valid
      end
    end

    context "invalid attributes" do
      it "should not be valid" do
        location = FactoryGirl.build(:location, name: "")
        location.should_not be_valid
      end
    end
  end

end
