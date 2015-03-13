require 'spec_helper'

describe Menu, :type => :model  do

  describe "creation" do
    context "valid attributes" do
      it "should be valid" do
        menu = FactoryGirl.build(:menu)
        menu.should be_valid
      end
    end

    context "blank attribute item" do
      it "should validate presence of item" do
        menu = FactoryGirl.build(:menu, item: "", day: "Sunday", type_of: "Breakfast")
        menu.should validate_presence_of(:item)
      end
    end

    context "blank attribute type_of, day" do
      it "should validate presence of type_of, day" do
        menu = FactoryGirl.build(:menu, item: "", day: "", type_of: "")
        menu.should validate_presence_of(:item)
        menu.should validate_presence_of(:type_of)
        menu.should validate_presence_of(:day)
      end
    end

    #  context "invalid attributes" do
    #   it "should validate uniqueness of item" do
    #     menu1 = FactoryGirl.build(:menu)
    #     location_id = menu1.location_id
    #     menu = FactoryGirl.build(:menu, item: "idly", day: "Sunday", type_of: "Breakfast", location_id: location_id)
    #     menu.should validate_uniqueness_of(:item).scoped_to(:location)
    #     # menu.should_not be_valid
    #   end
    # end
  end

end
