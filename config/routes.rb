# frozen_string_literal: true

Rails.application.routes.draw do
  resources :people
  resources :budgets do
    resources :budget_years
  end

  resources :group_conts do
    resources :conts
  end

  devise_for :users
  root 'home#index'
end
