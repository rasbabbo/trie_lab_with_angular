Rails.application.routes.draw do
  root to: "words#index"
  resources :words, except: [:edit, :new]
  resources :words_templates

end
