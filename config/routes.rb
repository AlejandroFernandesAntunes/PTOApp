Ptoapp::Application.routes.draw do
  resources :reports

  resources :ptos

  resources :users

  get 'content_pages/home'
  get 'ptos_of_the_month', to: 'application#ptos_of_the_month'
  root to: 'content_pages#home'
end
