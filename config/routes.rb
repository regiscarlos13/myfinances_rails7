# frozen_string_literal: true

Rails.application.routes.draw do
  resources :group_conts
  devise_for :users
  root 'home#index'
end
