Rails.application.routes.draw do
  get 'restaurants', to: 'restaurants#index'
  get 'restaurants/new', to: 'restaurants#new'
  post 'restaurants', to: 'restaurants#create'
  get 'restaurants/:id', to: 'restaurants#show', as: :restaurant
  get 'restaurants/:restaurant_id/reviews/new', to: 'reviews#new', as: :review_new
  post 'restaurants/:restaurant_id/reviews', to: 'reviews#create'
  get 'restaurants/:restaurant_id/reviews/', to: 'reviews#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
