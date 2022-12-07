FactoryBot.define do
  factory :ticket do
    status { "new" }
    name { "Example Ticket" }
    description { "This is an example ticket" }
  end
end
