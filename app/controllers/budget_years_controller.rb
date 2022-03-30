# frozen_string_literal: true

class BudgetYearsController < ApplicationController # :nodoc:
  before_action :set_budget
  before_action :set_budget_year, only: %i[edit update destroy]

  def create
    @budget_year = @budget.budget_years.create(budget_year_params)
    respond_to do |format|
      if @budget_year.save
        format.html { redirect_to @budget, notice: 'Registro criado com Sucesso' }
      else
        format.html { redirect_to @budget }
      end
    end
  end

  def edit; end

  def destroy
    @budget_year.destroy
    redirect_to @budget, status: 303, notice: 'Registro removido com Sucesso'
  end

  def update
    respond_to do |format|
      if @budget_year.update(budget_year_params)
        format.html { redirect_to budget_url(@budget), notice: 'Registro atualizado com Sucesso.' }
      else
        format.html { render :edit, status: :unprocessable_entity }
      end
    end
  end

  private

  def budget_year_params
    params.required(:budget_year).permit(:cont_id, :january, :february, :march,
                                         :april, :may, :june, :july, :august, :september,
                                         :october, :november, :december, :total)
  end

  def set_budget
    @budget = Budget.find(params[:budget_id])
  end

  def set_budget_year
    @budget_year = @budget.budget_years.find(params[:id])
  end
end
