Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'shops#index'
  resources :shops do
  end

  resource :sales do
    collection do
      get :nanba
      get :kumatori
      get :kaizuka
      get :hannan
      get :sakai
      get :umeda
      get :izumihuchu
      get :nishikujyo
      get :tennouji
      get :ootori
    end
  end
  
end
