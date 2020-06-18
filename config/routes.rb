# frozen_string_literal: true

Rails.application.routes.draw do
  resources :courses, only: %i[index show]
  resources :students, only: :create
end
