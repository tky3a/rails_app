Rails.application.routes.draw do
  root 'static_pages#home'

  #get 'static_pages/help'
  match '/help', to: 'static_pages#help', via: 'get'
  #get 'static_pages/about'
  match '/about', to: 'static_pages#about', via: 'get'
  #get 'static_pages/contact'
  match '/contact', to: 'static_pages#contact', via: 'get'
end
