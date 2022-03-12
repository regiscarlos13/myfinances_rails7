# frozen_string_literal: true

require 'rails_helper'

RSpec.describe GroupCont, type: :model do
  it { should validate_presence_of(:name) }
  it { should validate_presence_of(:tipo) }
  it { should validate_uniqueness_of(:name) }
  it { should belong_to(:user) }
end
