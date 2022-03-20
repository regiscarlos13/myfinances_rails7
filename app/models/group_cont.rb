# frozen_string_literal: true

class GroupCont < ApplicationRecord # :nodoc:
  belongs_to :user
  has_many :conts, dependent: :destroy

  validates_presence_of :name, :tipo
  validates_uniqueness_of :name

  enum tipo: %i[Receita Despesa]
end
