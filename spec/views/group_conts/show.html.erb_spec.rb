# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'group_conts/show', type: :view do
  before(:each) do
    @group_cont = assign(:group_cont, GroupCont.create!(
                                        user: nil,
                                        type: 2,
                                        name: 'Name',
                                        active: false
                                      ))
  end

  it 'renders attributes in <p>' do
    render
    expect(rendered).to match(//)
    expect(rendered).to match(/2/)
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/false/)
  end
end
