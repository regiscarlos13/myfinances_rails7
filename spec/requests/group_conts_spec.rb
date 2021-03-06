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

RSpec.describe '/group_conts', type: :request do
  # This should return the minimal set of attributes required to create a valid
  # GroupCont. As you add validations to GroupCont, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) do
    skip('Add a hash of attributes valid for your model')
  end

  let(:invalid_attributes) do
    skip('Add a hash of attributes invalid for your model')
  end

  describe 'GET /index' do
    it 'renders a successful response' do
      GroupCont.create! valid_attributes
      get group_conts_url
      expect(response).to be_successful
    end
  end

  describe 'GET /show' do
    it 'renders a successful response' do
      group_cont = GroupCont.create! valid_attributes
      get group_cont_url(group_cont)
      expect(response).to be_successful
    end
  end

  describe 'GET /new' do
    it 'renders a successful response' do
      get new_group_cont_url
      expect(response).to be_successful
    end
  end

  describe 'GET /edit' do
    it 'renders a successful response' do
      group_cont = GroupCont.create! valid_attributes
      get edit_group_cont_url(group_cont)
      expect(response).to be_successful
    end
  end

  describe 'POST /create' do
    context 'with valid parameters' do
      it 'creates a new GroupCont' do
        expect do
          post group_conts_url, params: { group_cont: valid_attributes }
        end.to change(GroupCont, :count).by(1)
      end

      it 'redirects to the created group_cont' do
        post group_conts_url, params: { group_cont: valid_attributes }
        expect(response).to redirect_to(group_cont_url(GroupCont.last))
      end
    end

    context 'with invalid parameters' do
      it 'does not create a new GroupCont' do
        expect do
          post group_conts_url, params: { group_cont: invalid_attributes }
        end.to change(GroupCont, :count).by(0)
      end

      it "renders a successful response (i.e. to display the 'new' template)" do
        post group_conts_url, params: { group_cont: invalid_attributes }
        expect(response).to be_successful
      end
    end
  end

  describe 'PATCH /update' do
    context 'with valid parameters' do
      let(:new_attributes) do
        skip('Add a hash of attributes valid for your model')
      end

      it 'updates the requested group_cont' do
        group_cont = GroupCont.create! valid_attributes
        patch group_cont_url(group_cont), params: { group_cont: new_attributes }
        group_cont.reload
        skip('Add assertions for updated state')
      end

      it 'redirects to the group_cont' do
        group_cont = GroupCont.create! valid_attributes
        patch group_cont_url(group_cont), params: { group_cont: new_attributes }
        group_cont.reload
        expect(response).to redirect_to(group_cont_url(group_cont))
      end
    end

    context 'with invalid parameters' do
      it "renders a successful response (i.e. to display the 'edit' template)" do
        group_cont = GroupCont.create! valid_attributes
        patch group_cont_url(group_cont), params: { group_cont: invalid_attributes }
        expect(response).to be_successful
      end
    end
  end

  describe 'DELETE /destroy' do
    it 'destroys the requested group_cont' do
      group_cont = GroupCont.create! valid_attributes
      expect do
        delete group_cont_url(group_cont)
      end.to change(GroupCont, :count).by(-1)
    end

    it 'redirects to the group_conts list' do
      group_cont = GroupCont.create! valid_attributes
      delete group_cont_url(group_cont)
      expect(response).to redirect_to(group_conts_url)
    end
  end
end
