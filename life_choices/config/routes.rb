Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root :to => 'questions#index'

  get 'questions/:id/vote_one' => 'questions#vote_one', as: 'vote_one'
  get 'questions/:id/vote_two' => 'questions#vote_two', as: 'vote_two'

  resources :questions
end
