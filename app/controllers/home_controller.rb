# frozen_string_literal: true

class HomeController < ApplicationController # :nodoc:
  def index
    budgets_receitas
    budgets_despesas
  end

  def budgets_receitas
    @budget_receitas = @budget&.budget_years&.map { |x| x if x.type_cont == 'Receita' }&.compact
  end

  def budgets_despesas
    @budget_despesas = @budget&.budget_years&.map { |x| x if x.type_cont == 'Despesa' }&.compact
  end
end
