Rails.application.routes.draw do

  get "login" => "users#login_form"
  post "login" => "users#login"
  post "logout" => "users#logout"
  get "signup" => "users#new"
  post "users/create" => "users#create"


  # --------------------------------------------------------------------------------------------------------

  get "posts/new" => "posts#new"
  post "posts/create" => "posts#create"

  # ---------------------------------------------------------------------------------------------------------

  get "/" => "home#top"

# -----------------------------------------------------------------------------------------------------------

  get "category/area" => "category#area"
  get "category/gourmet" => "category#gourmet"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
