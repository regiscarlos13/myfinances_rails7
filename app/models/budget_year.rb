# frozen_string_literal: true

class BudgetYear < ApplicationRecord # :nodoc:
  belongs_to :budget
  belongs_to :cont, -> { where(active: true) }

  before_save :save_total

  validates_uniqueness_of :cont, scope: [:budget]

  validate :total, if: :validade_sum_month

  def save_total
    self.total = sum_month
  end

  def validade_sum_month
    errors.add(:base, 'Data menor que a do Tombamento') unless sum_month.positive?
  end

  def sum_month
    [january, february, march,
     april,  may, june,
     july,   august, september,
     october, november, december].reject(&:blank?).sum
  end

  def type_cont
    cont.group_cont.tipo
  end

end
