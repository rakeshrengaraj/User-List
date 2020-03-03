Rails.application.routes.draw do

  devise_scope :user do
    authenticated :user do
      root 'users/sessions#user_list', as: :authenticated_root
    end
    unauthenticated :user do
      root :to => 'devise/sessions#new'
    end
  end 


  match "/404" => "errors#error404", via: [ :get, :post, :patch, :delete ]

  devise_for :users, path: '', path_names: { sign_in: 'login', sign_out: 'logout', password: 'secret', registration: '', sign_up: 'sign_up' }

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

end
