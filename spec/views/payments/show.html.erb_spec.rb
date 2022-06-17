# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'payments/show', type: :view do
  before(:each) do
    @payment = assign(:payment, Payment.create!(
                                  user: nil,
                                  tipo: 2,
                                  banco: 'Banco',
                                  name: 'Name',
                                  agencia: 'Agencia',
                                  conta: 'Conta',
                                  conta_tipo: 3
                                ))
  end

  it 'renders attributes in <p>' do
    render
    expect(rendered).to match(//)
    expect(rendered).to match(/2/)
    expect(rendered).to match(/Banco/)
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/Agencia/)
    expect(rendered).to match(/Conta/)
    expect(rendered).to match(/3/)
  end
end
