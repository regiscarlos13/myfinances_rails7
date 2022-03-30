# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'orders/show', type: :view do
  before(:each) do
    @order = assign(:order, Order.create!(
                              cont: nil,
                              person: nil,
                              total: '9.99',
                              parcela: 2
                            ))
  end

  it 'renders attributes in <p>' do
    render
    expect(rendered).to match(//)
    expect(rendered).to match(//)
    expect(rendered).to match(/9.99/)
    expect(rendered).to match(/2/)
  end
end
