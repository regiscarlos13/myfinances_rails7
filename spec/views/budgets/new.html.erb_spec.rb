# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'budgets/new', type: :view do
  before(:each) do
    assign(:budget, Budget.new(
                      user: nil,
                      active: false
                    ))
  end

  it 'renders new budget form' do
    render

    assert_select 'form[action=?][method=?]', budgets_path, 'post' do
      assert_select 'input[name=?]', 'budget[user_id]'

      assert_select 'input[name=?]', 'budget[active]'
    end
  end
end
