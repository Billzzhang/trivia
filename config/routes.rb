Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :category do
        resources :question 
      end
      resources :difficulty do
        resources :question
      end
    end
  end
  root 'questions#category', as: 'home'
  put 'play' => 'questions#play', as: 'choice', :collection => {:complete => :put}
  resources :questions
end
