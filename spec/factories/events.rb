FactoryBot.define do
  factory :event do
    name           { "#{Faker::Company.buzzword} #{Faker::Team.sport}" }
    description    { Faker::Lorem.paragraph }
    # group_id       { FactoryBot.create(:group).id }
    start_datetime { DateTime.parse("July 26").midday }

    trait :same_day_event do
      end_datetime { start_datetime + 1.hour }
    end
  end
end
