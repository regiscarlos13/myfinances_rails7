# frozen_string_literal: true

class OrdersController < ApplicationController # :nodoc:
  before_action :set_order, only: %i[show edit update destroy]
  before_action :set_cont, only: %i[edit new]

  def index
    @meses = ApplicationRecord.mes
    @orders = Order.where('EXTRACT(MONTH FROM data) = ?', params[:month].to_i)
                   .where('extract(year from data) = ?', @year.to_i)
    calculos_saldo
  end

  def calculos_saldo
    @total_receitas = @orders.map { |x| x.total if x.tipo_status.eql?('Receita') }.compact_blank!.sum
    @total_despesas = @orders.map { |x| x.total if x.tipo_status.eql?('Despesa') }.compact_blank!.sum
    @saldo = @total_receitas - @total_despesas
  end

  def show; end

  def new
    @order = Order.new
  end

  def edit; end

  def create
    @order = Order.new(order_params)

    @data = @order.data
    @parcela = (@order.parcela - 1)
    @n = 1
    @order.parcela = 1

    respond_to do |format|
      if @order.save
        create_parcela
        format.html { redirect_to order_url(@order), notice: 'Registro Criado com Sucesso' }
      else
        format.html { render :new, status: :unprocessable_entity }
      end
    end
  end

  def create_parcela
    return unless @parcela > 1

    (1..@parcela).each do |_i|
      order = @order.dup
      order.data =  (@data += 1.month)
      order.parcela = (@n += 1)
      order.save!
    end
  end

  def update
    respond_to do |format|
      if @order.update(order_params)
        format.html { redirect_to order_url(@order), notice: 'Registro Atualizado com Sucesso' }
      else
        format.html { render :edit, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @order.destroy

    respond_to do |format|
      format.html { redirect_to orders_url, notice: 'Registro Removido com Sucesso' }
      format.json { head :no_content }
    end
  end

  private

  def set_order
    @order = Order.find(params[:id])
  end

  def set_cont
    @conts = Cont.find(@budget.budget_years.pluck(:cont_id))
  end

  def order_params
    params.require(:order).permit(:cont_id, :person_id, :data, :total, :parcela)
  end
end
