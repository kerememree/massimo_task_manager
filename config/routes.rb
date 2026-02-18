Rails.application.routes.draw do
  resources :tasks
  devise_for :users

  # Uygulama açıldığında (/) doğrudan görev listesine gitsin
  root to: "tasks#index" 

  # Sağlık kontrolü ve diğer varsayılan rotalar...
  get "up" => "rails/health#show", as: :rails_health_check
end