# frozen_string_literal: true

require 'rails_helper'

RSpec.describe GroupContsController, type: :routing do
  describe 'routing' do
    it 'routes to #index' do
      expect(get: '/group_conts').to route_to('group_conts#index')
    end

    it 'routes to #new' do
      expect(get: '/group_conts/new').to route_to('group_conts#new')
    end

    it 'routes to #show' do
      expect(get: '/group_conts/1').to route_to('group_conts#show', id: '1')
    end

    it 'routes to #edit' do
      expect(get: '/group_conts/1/edit').to route_to('group_conts#edit', id: '1')
    end

    it 'routes to #create' do
      expect(post: '/group_conts').to route_to('group_conts#create')
    end

    it 'routes to #update via PUT' do
      expect(put: '/group_conts/1').to route_to('group_conts#update', id: '1')
    end

    it 'routes to #update via PATCH' do
      expect(patch: '/group_conts/1').to route_to('group_conts#update', id: '1')
    end

    it 'routes to #destroy' do
      expect(delete: '/group_conts/1').to route_to('group_conts#destroy', id: '1')
    end
  end
end
