Rails.application.routes.draw do
  #resources :posts
  root "welcome#index"
  resources :candidates do
    member do
      post :vote
    end
  end

  #post "/candidates/:id/vote", to: "candidates#vote"
end

