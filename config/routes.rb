HotelAdvisor::Application.routes.draw do

  get "hotels/new"
  devise_for :users, path_names: {sign_in: "login", sign_out: "logout"}

  resources :hotels
  root :to => 'hotels#index', :as => 'index'
end
