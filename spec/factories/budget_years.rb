# frozen_string_literal: true

FactoryBot.define do
  factory :budget_year do
    budget { nil }
    count { nil }
    january { '9.99' }
    february { 'MyString' }
    march { 'MyString' }
    april { 'MyString' }
    may { 'MyString' }
    june { 'MyString' }
    july { 'MyString' }
    august { 'MyString' }
    september { 'MyString' }
    october { 'MyString' }
    november { 'MyString' }
    december { 'MyString' }
    total { 'MyString' }
  end
end
