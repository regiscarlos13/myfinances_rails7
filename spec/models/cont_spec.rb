# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Cont, type: :model do
  it { should validate_presence_of(:name) }
  it { should validate_uniqueness_of(:name).scoped_to(:group_cont) }
  it { should belong_to(:group_cont) }
end
