Rails.application.routes.draw do

  #home
  root to:'pages#home'

  #about
  get 'about', to: 'pages#about'
  get 'about_road', to: 'pages#about_road'
  get 'about_brand', to: 'pages#about_brand'

  #adventure
  get 'adventure', to: 'pages#adventure'

  get 'adventures_road', to: 'pages#adventures_road'
  get 'adventures_offer', to: 'pages#adventures_offer'

  #shop
  get 'shop', to: 'pages#shop'

  get 'production', to: 'pages#production'
  get 'products', to: 'pages#products'

  get 'first_product', to: 'pages#first_product'
  get 'second_product', to: 'pages#second_product'
  get 'third_product', to: 'pages#third_product'
  get 'fourth_product', to: 'pages#fourth_product'

  #FAQ
  get 'faq', to: 'pages#faq'

  #contact
  get 'contact-me', to: 'messages#new', as: 'new_message'
  post 'contact-me', to: 'messages#create', as: 'create_message'
end
