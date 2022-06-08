FactoryBot.define do
  factory :employee do
    name { "MyString" }
    email { "MyString" }
    position { "MyString" }
    employee_number { "MyString" }
    private_number { "MyString" }
    active { false }
    branch { nil }
  end
end
