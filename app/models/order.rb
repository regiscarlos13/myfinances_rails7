# frozen_string_literal: true

class Order < ApplicationRecord # :nodoc:
  belongs_to :cont
  belongs_to :person

  validates_presence_of :data, :total, :parcela

  def tipo_status
    cont.group_cont.tipo
  end
end
