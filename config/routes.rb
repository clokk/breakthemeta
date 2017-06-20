Rails.application.routes.draw do

  devise_for :users
  #resources :bulletins, except: [:index] if we want to put bulletins by themselves

  get "contact", to: "pages#contact"
  get "about", to: "pages#about"
  get "error", to: "pages#error"

  get "twitter", to: redirect("https://twitter.com/csleisz")

  resources :partners do
    resources :bulletins, except: [:index], controller: 'partners/bulletins'
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root 'pages#home'

  get "*path", to: redirect("/error")
end
