require 'rails_helper'

describe Sprint, type: :model do
  context "Validations" do
    it "should validate the presence of name" do
      sprint = FactoryGirl.build(:sprint, name: nil)
      expect(sprint).to be_invalid
    end
  end
end
