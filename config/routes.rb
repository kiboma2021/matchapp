Rails.application.routes.draw do
  root "companions#index"
  resources :companions do
    resources :posts
  end

end
