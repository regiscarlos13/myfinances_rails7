# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'payments/index', type: :view do
  before(:each) do
    assign(:payments, [
             Payment.create!(
               user: nil,
               tipo: 2,
               banco: 'Banco',
               name: 'Name',
               agencia: 'Agencia',
               conta: 'Conta',
               conta_tipo: 3
             ),
             Payment.create!(
               user: nil,
               tipo: 2,
               banco: 'Banco',
               name: 'Name',
               agencia: 'Agencia',
               conta: 'Conta',
               conta_tipo: 3
             )
           ])
  end

  it 'renders a list of payments' do
    render
    assert_select 'tr>td', text: nil.to_s, count: 2
    assert_select 'tr>td', text: 2.to_s, count: 2
    assert_select 'tr>td', text: 'Banco'.to_s, count: 2
    assert_select 'tr>td', text: 'Name'.to_s, count: 2
    assert_select 'tr>td', text: 'Agencia'.to_s, count: 2
    assert_select 'tr>td', text: 'Conta'.to_s, count: 2
    assert_select 'tr>td', text: 3.to_s, count: 2
  end
end
