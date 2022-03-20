# frozen_string_literal: true

class Cont < ApplicationRecord # :nodoc:
  belongs_to :group_cont
  has_many :budget_years
  validates_presence_of :name
  validates_uniqueness_of :name, scope: [:group_cont]

  def name_cont
    " #{name} - #{group_cont.tipo}"
  end
end
