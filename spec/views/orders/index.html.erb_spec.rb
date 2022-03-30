# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'orders/index', type: :view do
  before(:each) do
    assign(:orders, [
             Order.create!(
               cont: nil,
               person: nil,
               total: '9.99',
               parcela: 2
             ),
             Order.create!(
               cont: nil,
               person: nil,
               total: '9.99',
               parcela: 2
             )
           ])
  end

  it 'renders a list of orders' do
    render
    assert_select 'tr>td', text: nil.to_s, count: 2
    assert_select 'tr>td', text: nil.to_s, count: 2
    assert_select 'tr>td', text: '9.99'.to_s, count: 2
    assert_select 'tr>td', text: 2.to_s, count: 2
  end
end
