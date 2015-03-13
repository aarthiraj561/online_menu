require 'spec_helper'

describe Menu, :type => :model  do

  describe "creation" do
    context "valid attributes" do
      it "should be valid" do
        menu = FactoryGirl.build(:menu)
        menu.should be_valid
      end
    end

    context "invalid attributes" do
      it "should validate presence of item" do
        menu = FactoryGirl.build(:menu, item: "")
        menu.should_not be_valid
        should validate_presence_of(:item)
        should validate_uniqueness_of(:concept_id).scoped_to(:objective_id)
      end
    end
  end

end
