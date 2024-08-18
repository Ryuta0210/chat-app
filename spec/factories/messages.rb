FactoryBot.define do
  factory :message do
    content {Faker::Lorem.sentence}
    association :user
    association :room

    after(:build) do |message|
      message.image.attach(io: File.open("public/images/sample-image1.png"),filename: "sample-image1.png")
    end
  end
end