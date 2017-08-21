require 'rails_helper'

RSpec.describe Item, type: :model do
  it "is invalid without name" do
    expect(FactoryGirl.build(:item, name: nil)).to be_invalid
  end
end
