require 'rails_helper'

describe User, type: :model do
  let!(:user){ FactoryGirl.build(:user) }

  context "Validations" do
    it "should validate the presence of email" do
      user.email = nil
      expect(user).to be_invalid
    end

    it "should validate the uniquness of email" do
      user.save!
      user2 = FactoryGirl.build(:user, email: user.email)
      expect(user2).to be_invalid
    end
  end
end
