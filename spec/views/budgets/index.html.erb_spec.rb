# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'budgets/index', type: :view do
  before(:each) do
    assign(:budgets, [
             Budget.create!(
               user: nil,
               active: false
             ),
             Budget.create!(
               user: nil,
               active: false
             )
           ])
  end

  it 'renders a list of budgets' do
    render
    assert_select 'tr>td', text: nil.to_s, count: 2
    assert_select 'tr>td', text: false.to_s, count: 2
  end
end
