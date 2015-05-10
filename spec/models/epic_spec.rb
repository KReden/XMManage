require 'rails_helper'

describe Epic, type: :model do
  context "Validations" do
    it "should validate the presence of name" do
      epic = FactoryGirl.build(:epic, name: nil)
      expect(epic).to be_invalid
    end
  end

  xit "should calculate the total number of points on assigned stories"
end
