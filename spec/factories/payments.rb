# frozen_string_literal: true

FactoryBot.define do
  factory :payment do
    user { nil }
    tipo { 1 }
    banco { 'MyString' }
    name { 'MyString' }
    agencia { 'MyString' }
    conta { 'MyString' }
    conta_tipo { 1 }
  end
end
