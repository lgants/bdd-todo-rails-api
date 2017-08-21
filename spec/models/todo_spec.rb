require 'rails_helper'

RSpec.describe Todo, type: :model do
  it "is invalid without title" do
    expect(FactoryGirl.build(:todo, title: nil)).to be_invalid
  end

  it "should have many items" do
    t = Todo.reflect_on_association(:items)
    expect(t.macro).to eq(:has_many)
  end
end
