# frozen_string_literal: true

class HomeController < ApplicationController # :nodoc:
  def index
    @year = params[:year].blank? ? Time.new.year : params[:year]
    @budget = Budget.find_by(year: "#{@year}-01-01".."#{@year}-12-31")
    budgets
  end

  def budgets
    @budget_receitas = @budget.budget_years.map { |x| x if x.type_cont == 'Receita' }.compact
    @budget_despesas = @budget.budget_years.map { |x| x if x.type_cont == 'Despesa' }.compact
  end
end
