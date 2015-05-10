require 'rails_helper'

describe Comment, type: :model do
  context "Validations" do
    it "should validate the presence of user" do
      comment = FactoryGirl.build(:comment, user: nil)
      expect(comment).to be_valid
    end
    it "should validate the presence of story" do
      comment = FactoryGirl.build(:comment, story: nil)
      expect(comment).to be_valid
    end
  end
end
