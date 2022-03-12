# frozen_string_literal: true

class GroupCont < ApplicationRecord
  belongs_to :user

  validates_presence_of :name, :tipo
  validates_uniqueness_of :name

  enum tipo: %i[Receita Despesa]
end
