# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'group_conts/index', type: :view do
  before(:each) do
    assign(:group_conts, [
             GroupCont.create!(
               user: User.last,
               tipo: 2,
               name: 'Name',
               active: false
             ),
             GroupCont.create!(
               user: User.last,
               tipo: 2,
               name: 'Name',
               active: false
             )
           ])
  end

  it 'renders a list of group_conts' do
    render
    assert_select 'tr>td', text: nil.to_s, count: 2
    assert_select 'tr>td', text: 2.to_s, count: 2
    assert_select 'tr>td', text: 'Name'.to_s, count: 2
    assert_select 'tr>td', text: false.to_s, count: 2
  end
end
