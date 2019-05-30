Rails.application.routes.draw do
<<<<<<< HEAD
=======
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
>>>>>>> a00b0871cf83f4b2e964315118b6f465c0c0e87a
  root 'questions#category', as: 'home'
  put 'play' => 'questions#play', as: 'choice', :collection => {:complete => :put}
  put 'end' => 'questions#end', as: 'result', :collection => {:complete => :put}
  resources :questions
end
