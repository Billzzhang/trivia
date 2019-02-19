Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :category do
        resources :question #What does this line do?
      end
      resources :difficulty do
        resources :question
      end
    end
  end
  root 'questions#category', as: 'home'
  get 'questions' => 'questions#index'
  get 'questions/:id' => 'questions#show'
  get 'play/:category_id' => 'questions#play'
  resources :category
  resources :difficulty
  resources :question
end
