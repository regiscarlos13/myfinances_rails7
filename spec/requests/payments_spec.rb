# frozen_string_literal: true

require 'rails_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to test the controller code that
# was generated by Rails when you ran the scaffold generator.
#
# It assumes that the implementation code is generated by the rails scaffold
# generator. If you are using any extension libraries to generate different
# controller code, this generated spec may or may not pass.
#
# It only uses APIs available in rails and/or rspec-rails. There are a number
# of tools you can use to make these specs even more expressive, but we're
# sticking to rails and rspec-rails APIs to keep things simple and stable.

RSpec.describe '/payments', type: :request do
  # This should return the minimal set of attributes required to create a valid
  # Payment. As you add validations to Payment, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) do
    skip('Add a hash of attributes valid for your model')
  end

  let(:invalid_attributes) do
    skip('Add a hash of attributes invalid for your model')
  end

  describe 'GET /index' do
    it 'renders a successful response' do
      Payment.create! valid_attributes
      get payments_url
      expect(response).to be_successful
    end
  end

  describe 'GET /show' do
    it 'renders a successful response' do
      payment = Payment.create! valid_attributes
      get payment_url(payment)
      expect(response).to be_successful
    end
  end

  describe 'GET /new' do
    it 'renders a successful response' do
      get new_payment_url
      expect(response).to be_successful
    end
  end

  describe 'GET /edit' do
    it 'renders a successful response' do
      payment = Payment.create! valid_attributes
      get edit_payment_url(payment)
      expect(response).to be_successful
    end
  end

  describe 'POST /create' do
    context 'with valid parameters' do
      it 'creates a new Payment' do
        expect do
          post payments_url, params: { payment: valid_attributes }
        end.to change(Payment, :count).by(1)
      end

      it 'redirects to the created payment' do
        post payments_url, params: { payment: valid_attributes }
        expect(response).to redirect_to(payment_url(Payment.last))
      end
    end

    context 'with invalid parameters' do
      it 'does not create a new Payment' do
        expect do
          post payments_url, params: { payment: invalid_attributes }
        end.to change(Payment, :count).by(0)
      end

      it "renders a successful response (i.e. to display the 'new' template)" do
        post payments_url, params: { payment: invalid_attributes }
        expect(response).to be_successful
      end
    end
  end

  describe 'PATCH /update' do
    context 'with valid parameters' do
      let(:new_attributes) do
        skip('Add a hash of attributes valid for your model')
      end

      it 'updates the requested payment' do
        payment = Payment.create! valid_attributes
        patch payment_url(payment), params: { payment: new_attributes }
        payment.reload
        skip('Add assertions for updated state')
      end

      it 'redirects to the payment' do
        payment = Payment.create! valid_attributes
        patch payment_url(payment), params: { payment: new_attributes }
        payment.reload
        expect(response).to redirect_to(payment_url(payment))
      end
    end

    context 'with invalid parameters' do
      it "renders a successful response (i.e. to display the 'edit' template)" do
        payment = Payment.create! valid_attributes
        patch payment_url(payment), params: { payment: invalid_attributes }
        expect(response).to be_successful
      end
    end
  end

  describe 'DELETE /destroy' do
    it 'destroys the requested payment' do
      payment = Payment.create! valid_attributes
      expect do
        delete payment_url(payment)
      end.to change(Payment, :count).by(-1)
    end

    it 'redirects to the payments list' do
      payment = Payment.create! valid_attributes
      delete payment_url(payment)
      expect(response).to redirect_to(payments_url)
    end
  end
end
