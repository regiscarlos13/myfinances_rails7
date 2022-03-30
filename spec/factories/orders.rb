# frozen_string_literal: true

FactoryBot.define do
  factory :order do
    cont { nil }
    person { nil }
    data { '2022-03-26' }
    total { '9.99' }
    parcela { 1 }
  end
end
