Rails.application.routes.draw do
  get 'restaurants', to: 'restaurants#index'
  get 'restaurants/new', to: 'restaurants#new'
  post 'restaurants', to: 'restaurants#create'
  get 'restaurants/:id', to: 'restaurants#show', as: :restaurant
  get 'restaurants/:restaurant_id/reviews/new', to: 'reviews#new', as: :reviews
  post 'restaurants/:restaurant_id/reviews', to: 'reviews#create', as: :restaurant_reviews
  post 'restaurants/:restaurant_id/reviews/new', to: 'reviews#create'
  get 'admin/restaurants', to: 'admin/restaurants#index'
  get 'admin/restaurants/:id/edit', to: 'admin/restaurants#edit', as: :edit_admin_restaurant
  patch 'restaurants/:id', to: 'restaurants#update', as: :update_restaurant
  delete 'restaurants/:id', to: 'restaurants#destroy', as: :delete_restaurant
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
