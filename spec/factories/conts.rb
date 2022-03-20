# frozen_string_literal: true

FactoryBot.define do
  factory :cont do
    name { Faker::Commerce.product_name }
    active { Faker::Boolean.boolean }
    group_cont { GroupCont.find('3fdecac2-e84b-48a0-bacd-a10c688aa862') }
  end
end
