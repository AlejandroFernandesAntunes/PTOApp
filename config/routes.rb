Ptoapp::Application.routes.draw do
  resources :reports

  resources :ptos

  resources :users

  get 'content_pages/home'
  get 'by_month', to: 'ptos#by_month'
  root to: 'content_pages#home'
end
