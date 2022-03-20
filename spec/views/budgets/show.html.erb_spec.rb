# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'budgets/show', type: :view do
  before(:each) do
    @budget = assign(:budget, Budget.create!(
                                user: nil,
                                active: false
                              ))
  end

  it 'renders attributes in <p>' do
    render
    expect(rendered).to match(//)
    expect(rendered).to match(/false/)
  end
end
