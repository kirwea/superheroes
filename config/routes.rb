Rails.application.routes.draw do
    resources :heros, only: [:index, :show]
    resources :powers, only: [:index, :show, :update]
    resources :hero_powers, only: [:create]
  
    # heroes 
    get 'heros', to: 'heros#index'
    get 'heros/:id', to: 'heros#show'
end
