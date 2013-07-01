require 'spec_helper'

describe User do
  it "has a valid factory" do
    FactoryGirl.create(:user).should be_valid
  end

  it "fails without username" do
    FactoryGirl.build(:user, username: nil).should_not be_valid
  end
end
