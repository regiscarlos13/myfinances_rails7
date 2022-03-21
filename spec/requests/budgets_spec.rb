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

RSpec.describe '/budgets', type: :request do
  # This should return the minimal set of attributes required to create a valid
  # Budget. As you add validations to Budget, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) do
    skip('Add a hash of attributes valid for your model')
  end

  let(:invalid_attributes) do
    skip('Add a hash of attributes invalid for your model')
  end

  describe 'GET /index' do
    it 'renders a successful response' do
      Budget.create! valid_attributes
      get budgets_url
      expect(response).to be_successful
    end
  end

  describe 'GET /show' do
    it 'renders a successful response' do
      budget = Budget.create! valid_attributes
      get budget_url(budget)
      expect(response).to be_successful
    end
  end

  describe 'GET /new' do
    it 'renders a successful response' do
      get new_budget_url
      expect(response).to be_successful
    end
  end

  describe 'GET /edit' do
    it 'renders a successful response' do
      budget = Budget.create! valid_attributes
      get edit_budget_url(budget)
      expect(response).to be_successful
    end
  end

  describe 'POST /create' do
    context 'with valid parameters' do
      it 'creates a new Budget' do
        expect do
          post budgets_url, params: { budget: valid_attributes }
        end.to change(Budget, :count).by(1)
      end

      it 'redirects to the created budget' do
        post budgets_url, params: { budget: valid_attributes }
        expect(response).to redirect_to(budget_url(Budget.last))
      end
    end

    context 'with invalid parameters' do
      it 'does not create a new Budget' do
        expect do
          post budgets_url, params: { budget: invalid_attributes }
        end.to change(Budget, :count).by(0)
      end

      it "renders a successful response (i.e. to display the 'new' template)" do
        post budgets_url, params: { budget: invalid_attributes }
        expect(response).to be_successful
      end
    end
  end

  describe 'PATCH /update' do
    context 'with valid parameters' do
      let(:new_attributes) do
        skip('Add a hash of attributes valid for your model')
      end

      it 'updates the requested budget' do
        budget = Budget.create! valid_attributes
        patch budget_url(budget), params: { budget: new_attributes }
        budget.reload
        skip('Add assertions for updated state')
      end

      it 'redirects to the budget' do
        budget = Budget.create! valid_attributes
        patch budget_url(budget), params: { budget: new_attributes }
        budget.reload
        expect(response).to redirect_to(budget_url(budget))
      end
    end

    context 'with invalid parameters' do
      it "renders a successful response (i.e. to display the 'edit' template)" do
        budget = Budget.create! valid_attributes
        patch budget_url(budget), params: { budget: invalid_attributes }
        expect(response).to be_successful
      end
    end
  end

  describe 'DELETE /destroy' do
    it 'destroys the requested budget' do
      budget = Budget.create! valid_attributes
      expect do
        delete budget_url(budget)
      end.to change(Budget, :count).by(-1)
    end

    it 'redirects to the budgets list' do
      budget = Budget.create! valid_attributes
      delete budget_url(budget)
      expect(response).to redirect_to(budgets_url)
    end
  end
end