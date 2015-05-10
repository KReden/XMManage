require 'rails_helper'

describe :profile, type: :model do
  context "Validations" do
    it "should validate the presence of user_id" do
      profile = FactoryGirl.build(:profile, user: nil)
      expect(profile).to be_invalid
    end
  end
end
