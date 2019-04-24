# frozen_string_literal: true

Rails.application.routes.draw do
  root "weather#today"
  get "tomorrow", to: "weather#tomorrow"
  get "search", to: "weather#search"
  post "update", to:  "weather#update"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
