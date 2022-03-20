# frozen_string_literal: true

class BudgetsController < ApplicationController # :nodoc:
  before_action :set_budget, only: %i[show edit update destroy]

  def index
    @budgets = current_user.budgets.order(active: :desc)
  end

  def show
    @budget_year = BudgetYear.new
    @conts = Cont.where(active: true).where.not(id: @budget.budget_years.pluck(:cont_id))
  end

  def new
    @budget = Budget.new
  end

  def edit; end

  def create
    @budget = Budget.new(budget_params)

    respond_to do |format|
      if @budget.save
        format.html { redirect_to budget_url(@budget), notice: 'Budget was successfully created.' }
        format.json { render :show, status: :created, location: @budget }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @budget.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @budget.update(budget_params)
        format.html { redirect_to budget_url(@budget), notice: 'Budget was successfully updated.' }
        format.json { render :show, status: :ok, location: @budget }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @budget.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @budget.destroy

    respond_to do |format|
      format.html { redirect_to budgets_url, notice: 'Budget was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

  def set_budget
    @budget = Budget.find(params[:id])
  end

  def budget_params
    params.require(:budget).permit(:year, :active).merge(user_id: current_user.id)
  end
end
