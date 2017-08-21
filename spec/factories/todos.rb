# wrapping faker methods in a block ensures that faker generates dynamic data every time the factory is invoked
FactoryGirl.define do
  factory :todo do
    title { Faker::Lorem.word }
    created_by "MyString"
  end
end
