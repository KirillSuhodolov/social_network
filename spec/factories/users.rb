# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :user do
    nickname "MyString"
    age 1
    city "MyString"
    about "MyString"
    interests "MyString"
  end
end
