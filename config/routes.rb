# frozen_string_literal: true

Rails.application.routes.draw do
  root 'application#index'
  resources :users
  resources :companies
  devise_for :users
end
