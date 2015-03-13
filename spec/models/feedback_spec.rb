require 'spec_helper'

describe Feedback, :type => :model  do

  describe "creation" do
    context "valid attributes" do
      it "should be valid" do
        feedback = FactoryGirl.build(:feedback)
        feedback.should be_valid
      end
    end

    context "blank attribute message" do
      it "should validate presence of message" do
        feedback = FactoryGirl.build(:feedback, message: "")
        feedback.should validate_presence_of(:message)
      end
    end
  end

end
