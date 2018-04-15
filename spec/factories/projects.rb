FactoryBot.define do
  factory :project do
    description "#{Faker::Company.name} - #{Faker::Company.catch_phrase}"
  end
end
