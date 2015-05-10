require 'rails_helper'

describe Story, type: :model do
  context "Validations" do
    it "should validate the presence of name" do
      story = FactoryGirl.build(:story, name: nil)
      expect(story).to be_invalid
    end
  end
end
