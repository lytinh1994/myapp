Rails.application.routes.draw do
  mount Feed::Data => '/'
  
  root to: 'products#index'
  resources :products

end
