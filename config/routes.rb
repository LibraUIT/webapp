Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'app/dashboard#index'

  namespace :admin do
    get '/', to: redirect('/admin/dashboard')
    resources :dashboard, only: [:index]
  end

  namespace :app do
    get '/', to: redirect('/app/dashboard')
    resources :dashboard, only: [:index]
  end

end
