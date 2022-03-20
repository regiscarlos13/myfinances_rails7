# frozen_string_literal: true

FactoryBot.define do
  factory :budget do
    user { nil }
    year { '2022-03-17' }
    active { false }
  end
end
