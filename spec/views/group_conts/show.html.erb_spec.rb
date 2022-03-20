# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'group_conts/show', type: :view do
  before(:each) do
    @group_cont = assign(:group_cont, GroupCont.create!(
                                        user: '56757980-1854-4d8a-a594-e567f81b2d20',
                                        tipo: 'Receita',
                                        name: 'Name',
                                        active: false
                                      ))
  end

  it 'renders attributes in <p>' do
    render
    expect(rendered).to match(//)
    expect(rendered).to match(/Receita/)
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/false/)
  end
end
