# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'payments/edit', type: :view do
  before(:each) do
    @payment = assign(:payment, Payment.create!(
                                  user: nil,
                                  tipo: 1,
                                  banco: 'MyString',
                                  name: 'MyString',
                                  agencia: 'MyString',
                                  conta: 'MyString',
                                  conta_tipo: 1
                                ))
  end

  it 'renders the edit payment form' do
    render

    assert_select 'form[action=?][method=?]', payment_path(@payment), 'post' do
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
