Rails.application.routes.draw do
  resources :cpus
  resources :pcs
  #get 'home/home'
  root 'home#home'
  #route to contact page, home controller#contact page
  get 'contact',to: 'home#contact'
  #for the form contact page to submit data
  post 'request_contact', to:'home#request_contact'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
