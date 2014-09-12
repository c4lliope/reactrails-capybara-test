# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :image, aliases: [:original_image] do
    path { Rack::Test::UploadedFile.new("spec/fixtures/image.jpg",'image/jpg') }
    checksum "MyString"
  end
end
