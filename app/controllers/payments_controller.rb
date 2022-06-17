# frozen_string_literal: true

class PaymentsController < ApplicationController
  before_action :set_payment, only: %i[show edit update destroy]

  def index
    @payments = Payment.all
  end

  def show; end

  def new
    @payment = Payment.new
  end

  def edit; end

  def create
    @payment = Payment.new(payment_params)

    respond_to do |format|
      if @payment.save
        format.html { redirect_to payment_url(@payment), notice: 'Payment was successfully created.' }
      else
        format.html { render :new, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @payment.update(payment_params)
        format.html { redirect_to payment_url(@payment), notice: 'Payment was successfully updated.' }
      else
        format.html { render :edit, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @payment.destroy

    respond_to do |format|
      format.html { redirect_to payments_url, notice: 'Payment was successfully destroyed.' }
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_payment
    @payment = Payment.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def payment_params
    params.require(:payment).permit(:user_id, :tipo, :banco, :name, :agencia, :conta, :conta_tipo)
  end
end
