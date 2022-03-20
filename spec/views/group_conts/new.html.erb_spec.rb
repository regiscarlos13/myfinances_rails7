# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'group_conts/new', type: :view do
  before(:each) do
    assign(:group_cont, GroupCont.new(
                          user: User.last,
                          tipo: 1,
                          name: 'MyString',
                          active: false
                        ))
  end

  it 'renders new group_cont form' do
    render

    assert_select 'form[action=?][method=?]', group_conts_path, 'post' do
      assert_select 'input[name=?]', 'group_cont[user_id]'

      assert_select 'input[name=?]', 'group_cont[tipo]'

      assert_select 'input[name=?]', 'group_cont[name]'

      assert_select 'input[name=?]', 'group_cont[active]'
    end
  end
end
