# frozen_string_literal: true

FactoryBot.define do
  factory :group_cont do
    user { User.first }
    tipo { GroupCont.tipos.values.sample }
    name { Faker::Commerce.product_name }
    active { Faker::Boolean.boolean }
  end
end
