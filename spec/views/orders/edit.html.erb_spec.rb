# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'orders/edit', type: :view do
  before(:each) do
    @order = assign(:order, Order.create!(
                              cont: nil,
                              person: nil,
                              total: '9.99',
                              parcela: 1
                            ))
  end

  it 'renders the edit order form' do
    render

    assert_select 'form[action=?][method=?]', order_path(@order), 'post' do
      assert_select 'input[name=?]', 'order[cont_id]'

      assert_select 'input[name=?]', 'order[person_id]'

      assert_select 'input[name=?]', 'order[total]'

      assert_select 'input[name=?]', 'order[parcela]'
    end
  end
end
