Rails.application.routes.draw do
  devise_for :customers
  devise_for :users
  root to: 'admin/homes#top'
  namespace :admin do
    resources :homes, only:[:top]
    resources :items
    resources :genres, only:[:index, :create, :edit, :update]
    resources :customers, only:[:index, :show, :edit, :updete]
    resources :sessions, only:[:new, :create, :destroy]
    resources :orders, only:[:show, :update]
    resources :orders_details, only:[:show, :update]
  end
end
