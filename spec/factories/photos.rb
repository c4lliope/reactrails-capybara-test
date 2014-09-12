# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :photo do
    user
    taken_at "2014-09-09 11:40:49"
    original_image
  end
end
