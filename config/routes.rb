Rails.application.routes.draw do
  root 'weather#today'
  get 'tomorrow', to:'weather#tomorrow'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
