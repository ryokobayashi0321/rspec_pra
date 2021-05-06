FactoryBot.define do
  factory :message do
    title { Faker::Lorem.word }
    content { Faker::Lorem.paragraph }
  end
end
