# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'orders/new', type: :view do
  before(:each) do
    assign(:order, Order.new(
                     cont: nil,
                     person: nil,
                     total: '9.99',
                     parcela: 1
                   ))
  end

  it 'renders new order form' do
    render

    assert_select 'form[action=?][method=?]', orders_path, 'post' do
      assert_select 'input[name=?]', 'order[cont_id]'

      assert_select 'input[name=?]', 'order[person_id]'

      assert_select 'input[name=?]', 'order[total]'

      assert_select 'input[name=?]', 'order[parcela]'
    end
  end
end
