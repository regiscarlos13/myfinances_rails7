# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'group_conts/edit', type: :view do
  before(:each) do
    @group_cont = assign(:group_cont, GroupCont.create!(
                                        user: nil,
                                        type: 1,
                                        name: 'MyString',
                                        active: false
                                      ))
  end

  it 'renders the edit group_cont form' do
    render

    assert_select 'form[action=?][method=?]', group_cont_path(@group_cont), 'post' do
      assert_select 'input[name=?]', 'group_cont[user_id]'

      assert_select 'input[name=?]', 'group_cont[type]'

      assert_select 'input[name=?]', 'group_cont[name]'

      assert_select 'input[name=?]', 'group_cont[active]'
    end
  end
end
