# frozen_string_literal: true

Rails.application.routes.draw do
  resources :customers
  resources :companies
  devise_for :users
  resources :users

  root 'application#index'
end
