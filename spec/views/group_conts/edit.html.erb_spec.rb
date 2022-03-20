# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'group_conts/edit', type: :view do
  before(:each) do
    @group_cont = assign(:group_cont, GroupCont.create!(
                                        user: '56757980-1854-4d8a-a594-e567f81b2d20',
                                        tipo: 1,
                                        name: 'MyString',
                                        active: false
                                      ))
  end

  it 'renders the edit group_cont form' do
    render

    assert_select 'form[action=?][method=?]', group_cont_path(@group_cont), 'post' do
      assert_select 'input[name=?]', 'group_cont[user_id]'

      assert_select 'input[name=?]', 'group_cont[tipo]'

      assert_select 'input[name=?]', 'group_cont[name]'

      assert_select 'input[name=?]', 'group_cont[active]'
    end
  end
end
