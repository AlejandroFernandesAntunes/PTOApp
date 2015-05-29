Ptoapp::Application.routes.draw do
  resources :reports

  resources :ptos

  resources :users

  get 'content_pages/home'
  root to: 'content_pages#home'
end
