Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
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
  resources :category
  resources :difficulty
  get 'questions' => 'questions#index'
  get 'questions/:id' => 'questions#show'
  get 'play' => 'questions#play'
end
