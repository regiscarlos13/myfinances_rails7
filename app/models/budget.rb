# frozen_string_literal: true

class Budget < ApplicationRecord # :nodoc:
  belongs_to :user
  has_many :budget_years
  validates_presence_of :year
  validates_uniqueness_of :year

  def years
    year.year
  end
end
