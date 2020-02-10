Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'shops#index'
  resources :shops do
  end

  resources :sales do
  end
  
end
