# frozen_string_literal: true

class Order < ApplicationRecord
  belongs_to :cont
  belongs_to :person

  validates_presence_of :data, :total, :parcela
end
