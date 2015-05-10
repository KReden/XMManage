require 'rails_helper'

describe AcceptanceCriterium, type: :model do
  context "Validations" do
    it "should validate the presence of story" do
      ac = FactoryGirl.build(:acceptance_criterium, story: nil)
      expect(ac).to be_invalid
    end
  end
end
