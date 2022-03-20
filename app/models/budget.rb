# frozen_string_literal: true

class Budget < ApplicationRecord
  belongs_to :user
  has_many :budget_years
  validates_presence_of :year
  validates_uniqueness_of :year
end
