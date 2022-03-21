# frozen_string_literal: true

class Person < ApplicationRecord
  validates_presence_of :name, :tipo
  validates_uniqueness_of :name

  enum tipo: %i[Beneficiário Pagador Fornecedor]
end
