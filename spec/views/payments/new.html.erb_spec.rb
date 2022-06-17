# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'payments/new', type: :view do
  before(:each) do
    assign(:payment, Payment.new(
                       user: nil,
                       tipo: 1,
                       banco: 'MyString',
                       name: 'MyString',
                       agencia: 'MyString',
                       conta: 'MyString',
                       conta_tipo: 1
                     ))
  end

  it 'renders new payment form' do
    render

    assert_select 'form[action=?][method=?]', payments_path, 'post' do
      assert_select 'input[name=?]', 'payment[user_id]'

      assert_select 'input[name=?]', 'payment[tipo]'

      assert_select 'input[name=?]', 'payment[banco]'

      assert_select 'input[name=?]', 'payment[name]'

      assert_select 'input[name=?]', 'payment[agencia]'

      assert_select 'input[name=?]', 'payment[conta]'

      assert_select 'input[name=?]', 'payment[conta_tipo]'
    end
  end
end
