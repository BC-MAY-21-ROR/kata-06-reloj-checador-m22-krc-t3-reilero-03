FactoryBot.define do
  factory :attendance do
    check_in { "2022-06-08 15:58:00" }
    check_out { "2022-06-08 15:58:00" }
    employee { nil }
  end
end
