# frozen_string_literal: true
require 'rails_helper'

RSpec.describe Api::V1::UsersController, type: :routing do
  describe 'routing' do
    it 'routes post to #create' do
      path = '/api/v1/users/sessions'

      route_path = 'api/v1/users/user_sessions#create'
      expect(post: path).to route_to(route_path)
    end

    it 'routes delete to #destroy' do
      path = '/api/v1/users/sessions/_invalid_auth_token'
      route_path = 'api/v1/users/user_sessions#destroy'
      expect(delete: path).to route_to(route_path, id: '_invalid_auth_token')
    end

    it 'routes post to #magic_link' do
      path = '/api/v1/users/sessions/magic-link'
      route_path = 'api/v1/users/user_sessions#magic_link'
      expect(post: path).to route_to(route_path)
    end
  end
end
