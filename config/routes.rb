Rails.application.routes.draw do
  resources :medicines
  resources :doctors do
    resources :prescriptions do
      # get 'presc_medicines/new', to: 'presc_medicines#new', as: 'new_presc_medicines'
      # post 'presc_medicines', to: 'presc_medicines#create'
      # get 'presc_medicines/:id/edit', to: 'presc_medicines#edit', as: 'edit_presc_medicines'
      # patch 'presc_medicines/:id', to: 'presc_medicines#update'
      # delete 'presc_medicines/:id', to: 'presc_medicines#destroy'
    end
  end

  root 'home#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
