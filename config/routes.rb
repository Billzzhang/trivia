Rails.application.routes.draw do
  root 'questions#category', as: 'home'
  put 'play' => 'questions#play', as: 'choice', :collection => {:complete => :put}
  put 'end' => 'questions#end', as: 'result', :collection => {:complete => :put}
  resources :questions
end
